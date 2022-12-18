import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:pokedex/data/provider/pokemons_provider.dart';
import 'package:pokedex/data/repository/pokemons_repository.dart';
import 'package:pokedex/features/detail/bloc/detail_bloc.dart';
import 'package:pokedex/features/home/bloc/home_bloc.dart';

final getIt = GetIt.instance;

// ignore: non_constant_identifier_names
final Log = getIt<Logger>();

void setupGetItDependencyInjection() {
  //providers
  getIt.registerSingleton(PokemonsProvider());

  //repositories
  getIt.registerSingleton(
      PokemonsRepository(pokemonsProvider: getIt<PokemonsProvider>()));

  getIt.registerSingleton<Logger>(Logger());
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<HomeBloc>(
      HomeBloc(pokemonsRepository: getIt<PokemonsRepository>()));
  getIt.registerSingleton<DetailBloc>(
      DetailBloc(pokemonsRepository: getIt<PokemonsRepository>()));
}
