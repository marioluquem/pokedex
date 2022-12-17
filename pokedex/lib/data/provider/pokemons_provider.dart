import 'package:dio/dio.dart';
import 'package:pokedex/data/model/pokemon_list_response_model.dart';
import 'package:pokedex/data/provider/dio_provider.dart';
import 'package:pokedex/di.dart';

class PokemonsProvider extends DioProvider {
  final String allPokemonPath = '/pokemon';
  Future<Response> getAllPokemons() async {
    try {
      final result = await dio.get(allPokemonPath);
      return result;
    } on DioError catch (error) {
      Log.e(error);
      throw 'Error obteniendo pokemons';
    }
  }
}
