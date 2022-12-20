import 'package:dio/dio.dart';
import 'package:pokedex/data/provider/dio_provider.dart';
import 'package:pokedex/di.dart';

class PokemonsProvider extends DioProvider {
  final String allPokemonPath = '/pokemon';
  final String evolutionPath = '/evolution-chain';

  Future<Response> fetchAllPokemons(int limit, int offset) async {
    try {
      final result =
          await dio.get("$allPokemonPath/?limit=$limit&offset=$offset");
      return result;
    } on DioError catch (error) {
      Log.e(error);
      throw 'Error obtaining pokemons';
    }
  }

  Future<Response> fetchPokemonDetails(int pokeId) async {
    try {
      final result = await dio.get("$allPokemonPath/$pokeId");
      return result;
    } on DioError catch (error) {
      Log.e(error);
      throw 'Error obtaining pokemon details';
    }
  }

  Future<Response> fetchPokemonEvolutions(int pokeId) async {
    try {
      final result = await dio.get("$evolutionPath/$pokeId");
      return result;
    } on DioError catch (error) {
      Log.e(error);
      throw 'Error obtaining pokemon evolutions';
    }
  }
}
