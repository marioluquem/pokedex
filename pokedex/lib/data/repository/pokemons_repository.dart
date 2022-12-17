import 'package:pokedex/data/model/pokemon_list_response_model.dart';
import 'package:pokedex/data/provider/pokemons_provider.dart';
import 'package:pokedex/di.dart';

class PokemonsRepository {
  late PokemonsProvider _pokemonsProvider;

  PokemonsRepository({required PokemonsProvider pokemonsProvider}) {
    _pokemonsProvider = pokemonsProvider;
  }

  Future<ResponsePokemonListModel?> getAllPokemons() async {
    try {
      final response = await _pokemonsProvider.getAllPokemons();
      return ResponsePokemonListModel.fromJson(response.data);
    } catch (e) {
      Log.e(e);
    }
  }
}
