import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:meta/meta.dart';
import 'package:pokedex/data/model/pokemon_details_model.dart';
import 'package:pokedex/data/model/pokemon_list_response_model.dart';
import 'package:pokedex/data/model/pokemon_simple_info_model.dart';
import 'package:pokedex/data/repository/pokemons_repository.dart';
import 'package:pokedex/di.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  late PokemonsRepository _pokemonsRepository;
  final int _cardsPerRequest = 20;

  HomeBloc({required PokemonsRepository pokemonsRepository})
      : super(HomeInitial(const [], 0)) {
    _pokemonsRepository = pokemonsRepository;
    on<HomeInitialEvent>(_homeInitialEvent);
    on<HomeRequestPokemonsEvent>(_homeRequestPokemonsEvent);
  }

  FutureOr<void> _homeInitialEvent(
      HomeInitialEvent event, Emitter<HomeState> emit) async {
    await _fetchPokemons(emit);
  }

  _fetchPokemons(Emitter<HomeState> emit) async {
    ResponsePokemonListModel? response = await _pokemonsRepository
        .fetchAllPokemons(_cardsPerRequest, state.page * _cardsPerRequest);

    if (response == null) {
      emit(HomeErrorState('Error getting pokémons list'));
      return;
    }

    emit(HomeLoadingPokemonsState(state.listPokeDetails, state.page));

    Log.d(response.results);
    final listPokemons = response.results;

    List<PokemonDetailsModel> listPokeDetails = [];
    listPokeDetails.addAll(state.listPokeDetails);
    try {
      for (PokemonSimpleInfoModel pokeSimple in listPokemons) {
        final pokeId = (pokeSimple.url.split('/')..removeLast()).last;
        final pokeDetails = await _fetchPokemonDetails(emit, int.parse(pokeId));

        listPokeDetails.add(pokeDetails);
      }
    } catch (error) {
      Log.e('Error getting pokemon details');
      emit(HomeErrorState('Error getting pokemon details'));
      return;
    }

    Log.d(listPokeDetails);
    emit(HomeDataLoadedState(listPokeDetails, state.page + 1));
  }

  _fetchPokemonDetails(Emitter<HomeState> emit, int pokeId) async {
    PokemonDetailsModel? pokemonDetails =
        await _pokemonsRepository.fetchPokemonDetails(pokeId);

    if (pokemonDetails == null) {
      emit(HomeErrorState('Error getting pokémon details'));
      return;
    }

    return pokemonDetails;
  }

  FutureOr<void> _homeRequestPokemonsEvent(
      HomeRequestPokemonsEvent event, Emitter<HomeState> emit) {}
}
