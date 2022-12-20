import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/data/model/detail_ui_arguments_model.dart';
import 'package:pokedex/features/detail/detail_ui.dart';
import 'package:pokedex/features/home/bloc/home_bloc.dart';

import 'package:pokedex/extensions/strings_ext.dart';
import 'package:pokedex/res.dart';

class HomeUI extends StatelessWidget {
  static const String path = 'home';
  const HomeUI({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          if (state is HomeErrorState) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.errorMsg)));
          }
        },
        builder: (context, state) {
          final bloc = context.read<HomeBloc>();
          final isLoading = state is HomeLoadingPokemonsState;
          final itemCount = state.listPokeDetails.length;

          return SafeArea(
            child: Container(
              color: Colors.red.shade600,
              padding: const EdgeInsets.only(
                  right: 24, left: 24, bottom: 24, top: 12),
              child: Column(
                children: [
                  const Text(
                    "Pokédex",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 38,
                        fontFamily: 'Pokemon'),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20)),
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              child: GridView.builder(
                                itemCount: state.listPokeDetails.length,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount:
                                      screenSize.width > 400 ? 3 : 2,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10,
                                ),
                                itemBuilder: (context, index) {
                                  if (index > (itemCount - 4) && !isLoading) {
                                    bloc.add(HomeInitialEvent());
                                  }

                                  if (isLoading && index >= itemCount - 2) {
                                    return const Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 24.0),
                                      child: Center(
                                          child: CircularProgressIndicator(
                                        color: Colors.red,
                                      )),
                                    );
                                  }

                                  final poke = state.listPokeDetails[index];
                                  return InkWell(
                                    onTap: () {
                                      Navigator.of(context).pushNamed(
                                          DetailUI.path,
                                          arguments:
                                              DetailUIArgumentsModel(poke.id));
                                    },
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Transform.scale(
                                              scale: 1.3,
                                              child: Hero(
                                                  tag: "hero${poke.id}",
                                                  child: FadeInImage(
                                                    placeholder:
                                                        const AssetImage(Res
                                                            .pokeballBackground),
                                                    image: NetworkImage(
                                                        poke.photoURL),
                                                  )),
                                            ),
                                            Text(
                                                "#${index + 1} - ${poke.name.capitalizeFirst}")
                                          ]),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
