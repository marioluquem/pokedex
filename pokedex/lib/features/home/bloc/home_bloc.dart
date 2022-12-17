import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pokedex/data/model/pokemon_list_response_model.dart';
import 'package:pokedex/data/repository/pokemons_repository.dart';
import 'package:pokedex/di.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  late PokemonsRepository _pokemonsRepository;

  HomeBloc({required PokemonsRepository pokemonsRepository})
      : super(HomeInitial()) {
    _pokemonsRepository = pokemonsRepository;
    on<HomeInitialEvent>(_homeInitialEvent);
  }

  FutureOr<void> _homeInitialEvent(
      HomeInitialEvent event, Emitter<HomeState> emit) async {
    ResponsePokemonListModel? response =
        await _pokemonsRepository.getAllPokemons();

    if (response == null) {
      emit(HomeErrorState('Error getting pokémons list'));
      return;
    }

    Log.d(response.results);
  }
}
