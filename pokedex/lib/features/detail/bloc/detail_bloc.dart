import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:pokedex/data/model/pokemon_details_model.dart';
import 'package:pokedex/data/repository/pokemons_repository.dart';
import 'package:pokedex/di.dart';

part 'detail_event.dart';
part 'detail_state.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  PokemonsRepository pokemonsRepository;
  DetailBloc({required this.pokemonsRepository})
      : super(DetailInitialState(null)) {
    on<DetailInitialEvent>(_initial);
    on<DetailLoadingEvent>(_loading);
    on<DetailDataLoadedEvent>(_dataLoaded);
  }

  FutureOr<void> _initial(
      DetailInitialEvent event, Emitter<DetailState> emit) async {
    emit(DetailLoadingState());
    PokemonDetailsModel? pokeDetails =
        await pokemonsRepository.fetchPokemonDetails(event.id);

    if (pokeDetails == null) {
      emit(DetailErrorState('Error getting pokemon details'));
      return;
    }

    //we set the evolutions
    try {
      final pokeEvolutions =
          await pokemonsRepository.fetchPokemonEvolutions(event.id);
      if (pokeEvolutions != null) {
        pokeDetails = pokeDetails.copyWith(evolutions: pokeEvolutions);
      }
    } catch (error) {
      Log.d('Couldnt get pokemon evolutions');
    }

    emit(DetailDataLoadedState(pokeDetails!));
  }

  FutureOr<void> _dataLoaded(
      DetailDataLoadedEvent event, Emitter<DetailState> emit) {}

  FutureOr<void> _loading(DetailLoadingEvent event, Emitter<DetailState> emit) {
    emit(DetailLoadingState());
  }
}
