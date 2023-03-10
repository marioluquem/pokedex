part of 'detail_bloc.dart';

abstract class DetailEvent {}

class DetailInitialEvent extends DetailEvent {
  final int id;

  DetailInitialEvent(this.id);
}

class DetailLoadingEvent extends DetailEvent {}

class DetailDataLoadedEvent extends DetailEvent {
  final PokemonDetailsModel pokeDetails;

  DetailDataLoadedEvent(this.pokeDetails);
}
