import 'package:pokedex/data/model/pokemon_details_model.dart';
import 'package:pokedex/data/model/pokemon_evolutions_model.dart';
import 'package:pokedex/data/model/pokemon_list_response_model.dart';
import 'package:pokedex/data/provider/pokemons_provider.dart';
import 'package:pokedex/di.dart';

class PokemonsRepository {
  late PokemonsProvider _pokemonsProvider;

  PokemonsRepository({required PokemonsProvider pokemonsProvider}) {
    _pokemonsProvider = pokemonsProvider;
  }

  Future<PokemonListModel?> fetchAllPokemons(int limit, int offset) async {
    try {
      final response = await _pokemonsProvider.fetchAllPokemons(limit, offset);
      return PokemonListModel.fromJson(response.data);
    } catch (e) {
      Log.e(e);
    }
    return null;
  }

  Future<PokemonDetailsModel?> fetchPokemonDetails(int pokeId) async {
    try {
      final response = await _pokemonsProvider.fetchPokemonDetails(pokeId);
      PokemonDetailsModel poke = PokemonDetailsModel.fromJson(response.data);
      poke = poke.copyWith(
          imageURL:
              "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${poke.id}.png");
      return poke;
    } catch (e, stacktrace) {
      Log.e(e);
      Log.e(stacktrace);
    }
    return null;
  }

  Future<PokemonEvolutionsModel?> fetchPokemonEvolutions(int pokeId) async {
    try {
      final response = await _pokemonsProvider.fetchPokemonEvolutions(pokeId);
      return PokemonEvolutionsModel.fromJson(response.data);
    } catch (e) {
      Log.e(e);
    }
    return null;
  }
}
