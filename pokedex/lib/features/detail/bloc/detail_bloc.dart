import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:pokedex/data/model/pokemon_details_model.dart';
import 'package:pokedex/data/repository/pokemons_repository.dart';

part 'detail_event.dart';
part 'detail_state.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  PokemonsRepository pokemonsRepository;
  DetailBloc({required this.pokemonsRepository})
      : super(DetailInitialState(null)) {
    on<DetailInitialEvent>(_initial);
    on<DetailDataLoadedEvent>(_dataLoaded);
  }

  FutureOr<void> _initial(
      DetailInitialEvent event, Emitter<DetailState> emit) async {
    final pokeDetails = await pokemonsRepository.fetchPokemonDetails(event.id);

    if (pokeDetails == null) {
      emit(DetailErrorState('Error getting pokemon details'));
      return;
    }

    emit(DetailDataLoadedState(pokeDetails));
  }

  FutureOr<void> _dataLoaded(
      DetailDataLoadedEvent event, Emitter<DetailState> emit) {}
}
