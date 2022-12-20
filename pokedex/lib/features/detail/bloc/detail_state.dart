part of 'detail_bloc.dart';

abstract class DetailState {}

class DetailInitialState extends DetailState {
  final PokemonDetailsModel? poke;
  DetailInitialState(this.poke);
}

class DetailLoadingState extends DetailState {}

class DetailDataLoadedState extends DetailState {
  final PokemonDetailsModel pokeDetails;

  DetailDataLoadedState(this.pokeDetails);
}

class DetailErrorState extends DetailState {
  final String errorMsg;

  DetailErrorState(this.errorMsg);
}
