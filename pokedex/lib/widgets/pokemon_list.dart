import 'package:flutter/material.dart';
import 'package:pokedex/data/model/pokemon_simple_info_model.dart';

class PokemonListWidget extends StatelessWidget {
  final List<PokemonSimpleInfoModel> listPokemons;
  const PokemonListWidget({super.key, required this.listPokemons});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: listPokemons
          .map(
            (p) => Column(
              children: [
                Image.network(p.url),
                Text(p.name),
              ],
            ),
          )
          .toList(),
    );
  }
}
