import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/data/enums/pokemon_types_enum.dart';
import 'package:pokedex/data/model/chain_model.dart';
import 'package:pokedex/data/model/detail_ui_arguments_model.dart';
import 'package:pokedex/data/model/pokemon_details_model.dart';
import 'package:pokedex/data/model/species_model.dart';
import 'package:pokedex/extensions/strings_ext.dart';
import 'package:pokedex/features/detail/bloc/detail_bloc.dart';
import 'package:pokedex/res.dart';

class DetailUI extends StatelessWidget {
  static const String path = 'detail';
  const DetailUI({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final args = ModalRoute.of(context)?.settings.arguments;
    if (args is DetailUIArgumentsModel) {
      context.read<DetailBloc>().add(DetailInitialEvent(args.pokeId));
    }
    return BlocConsumer<DetailBloc, DetailState>(
      listener: (context, state) {
        if (state is DetailErrorState) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.errorMsg)));
        }
      },
      builder: (context, state) {
        if (state is DetailDataLoadedState) {
          final poke = state.pokeDetails;
          final pokeColor = PokemonTypesEnum.values
              .where((type) =>
                  type.name == poke.types?.first.type.name.toLowerCase())
              .first
              .color;
          return Scaffold(
            body: Column(
              children: [
                InkWell(
                  onTap: () => Navigator.of(context).pop(false),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.maxFinite,
                    padding: const EdgeInsets.only(top: 40),
                    color: pokeColor,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 16,
                        ),
                        if (poke.imageURL != null) _pokeImage(poke, screenSize),
                        const SizedBox(
                          height: 24,
                        ),
                        _pokemonInfo(poke, pokeColor),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.red,
            ),
          );
        }
      },
    );
  }

  _pokeImage(PokemonDetailsModel poke, Size screenSize) {
    return Transform.scale(
        scale: 1.5,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Opacity(
                opacity: 0.2,
                child: Transform.scale(
                  scale: 0.9,
                  child: Image.asset(
                    Res.pokeballBackground,
                  ),
                )),
            Hero(
              tag: "hero${poke.id}",
              child: Image.network(
                poke.imageURL!,
                height: screenSize.height * 0.3,
              ),
            ),
          ],
        ));
  }

  _pokemonInfo(PokemonDetailsModel poke, Color pokeColor) {
    return Expanded(
      child: Container(
        width: double.maxFinite,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50))),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                poke.name!.capitalizeFirst,
                style: TextStyle(
                    fontSize: 24,
                    color: pokeColor,
                    fontWeight: FontWeight.bold),
              ),
              if (poke.types?.first.type.name != null)
                _field(
                  'Type',
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: pokeColor),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                    child: Text(
                      poke.types!.first.type.name,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              if (poke.abilities != null)
                _field(
                  'Abilities',
                  Wrap(
                    spacing: 10,
                    children: poke.abilities!
                        .map((ability) =>
                            Chip(label: Text(ability.ability.name)))
                        .toList(),
                  ),
                ),
              if (poke.evolutions?.chain != null)
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    'Evolutions',
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                  Row(children: _createEvolutions(poke.evolutions?.chain, []))
                ]),
            ],
          ),
        ),
      ),
    );
  }

  _field(String name, Widget elements, {bool showInline = false}) {
    return Column(children: [
      const SizedBox(
        height: 16,
      ),
      SizedBox(
        width: double.maxFinite,
        child: showInline
            ? Row(
                children: [
                  Text(
                    name,
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  elements
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  elements
                ],
              ),
      )
    ]);
  }

  List<Widget> _createEvolutions(Chain? chain, List<Widget> listAccum) {
    Chain? evo = chain?.evolves_to?.first;
    bool hasMoreEvolutions = evo?.species != null;
    while (hasMoreEvolutions) {
      listAccum.add(Row(
        children: [
          Row(
            children: const [
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey,
              ),
            ],
          ),
          Column(children: [
            Image.network(
                "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${((evo!.species!.url.split('/')..removeLast()).last)}.png"),
            Text(evo.species!.name),
          ]),
        ],
      ));
      hasMoreEvolutions = evo.evolves_to != null && evo.evolves_to!.isNotEmpty;
      if (hasMoreEvolutions) evo = evo.evolves_to!.first;
    }

    return listAccum;
  }
}
