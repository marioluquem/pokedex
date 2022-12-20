part of 'home_bloc.dart';

abstract class HomeState {
  List<PokemonSimpleInfoModel> listPokeDetails;
  int page = 0;

  HomeState(this.listPokeDetails, this.page);
}

class HomeInitial extends HomeState {
  HomeInitial(super.listPokemon, super.page);
}

class HomeErrorState extends HomeState {
  final String errorMsg;

  HomeErrorState(this.errorMsg) : super([], 0);
}

class HomeLoadingPokemonsState extends HomeState {
  HomeLoadingPokemonsState(super.listPokemon, super.page);
}

class HomeDataLoadedState extends HomeState {
  HomeDataLoadedState(super.listPokemon, super.page);
}
