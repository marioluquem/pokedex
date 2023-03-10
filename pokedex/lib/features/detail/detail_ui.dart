import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/data/enums/pokemon_types_enum.dart';
import 'package:pokedex/data/model/chain_model.dart';
import 'package:pokedex/data/model/detail_ui_arguments_model.dart';
import 'package:pokedex/data/model/pokemon_details_model.dart';
import 'package:pokedex/di.dart';
import 'package:pokedex/extensions/strings_ext.dart';
import 'package:pokedex/features/detail/bloc/detail_bloc.dart';
import 'package:pokedex/features/home/home_ui.dart';
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
                Expanded(
                  child: Container(
                    width: double.maxFinite,
                    padding: const EdgeInsets.only(top: 40),
                    color: pokeColor,
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            const SizedBox(
                              height: 16,
                            ),
                            if (poke.imageURL != null)
                              _pokeImage(poke, args, screenSize),
                            const SizedBox(
                              height: 24,
                            ),
                            _pokemonInfo(context, poke, pokeColor),
                          ],
                        ),
                        Positioned(
                          top: 0,
                          left: 16,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: IconButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .pushReplacementNamed(HomeUI.path);
                              },
                              icon: const Icon(
                                Icons.arrow_back,
                                size: 30,
                              ),
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        }

        return Container(
          color: Colors.white,
        );
      },
    );
  }

  _pokeImage(PokemonDetailsModel poke, Object? args, Size screenSize) {
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
              tag:
                  "hero${args is DetailUIArgumentsModel ? args.pokeId : poke.id}",
              child: Image.network(
                poke.imageURL!,
                height: screenSize.height * 0.3,
              ),
            ),
          ],
        ));
  }

  _pokemonInfo(
      BuildContext context, PokemonDetailsModel poke, Color pokeColor) {
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
              if (poke.evolutions?.chain.evolves_to?.isNotEmpty == true)
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    'Evolutions',
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                  Row(
                      children: _createEvolutions(
                          context, poke.evolutions?.chain, []))
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
                    style: const TextStyle(color: Colors.grey, fontSize: 20),
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

  List<Widget> _createEvolutions(
      BuildContext context, Chain? chain, List<Widget> listAccum) {
    try {
      Chain? evo = chain?.evolves_to?.first;
      bool hasMoreEvolutions = evo?.species != null;
      while (hasMoreEvolutions) {
        final id = (evo!.species!.url.split('/')..removeLast()).last;
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
            InkWell(
              onTap: () => Navigator.of(context).pushNamed(DetailUI.path,
                  arguments: DetailUIArgumentsModel(int.parse(id))),
              child: Column(children: [
                Image.network(
                    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/$id.png"),
                Text(evo.species!.name.capitalizeFirst),
              ]),
            ),
          ],
        ));
        hasMoreEvolutions =
            evo.evolves_to != null && evo.evolves_to!.isNotEmpty;
        if (hasMoreEvolutions) evo = evo.evolves_to!.first;
      }
    } catch (error) {
      Log.d('Pokemon has no evolutions');
    }

    return listAccum;
  }
}
