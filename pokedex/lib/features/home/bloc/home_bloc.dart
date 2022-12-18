import 'dart:async';

import 'package:bloc/bloc.dart';
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

    List<PokemonSimpleInfoModel> listPokeSimple = [];
    listPokeSimple.addAll(state.listPokeDetails);
    listPokeSimple.addAll(response.results);

    Log.d(listPokeSimple);
    emit(HomeDataLoadedState(listPokeSimple, state.page + 1));
  }
}
