import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/data/model/detail_ui_arguments_model.dart';
import 'package:pokedex/features/detail/detail_ui.dart';
import 'package:pokedex/features/home/bloc/home_bloc.dart';

import 'package:pokedex/extensions/strings_ext.dart';

class HomeUI extends StatelessWidget {
  static const String path = 'home';
  const HomeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pokédex")),
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
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: GridView.builder(
                  itemCount: state.listPokeDetails.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    if (index > (itemCount - 4) && !isLoading) {
                      bloc.add(HomeInitialEvent());
                    }

                    if (isLoading && index >= itemCount - 2) {
                      return const Padding(
                        padding: EdgeInsets.symmetric(vertical: 24.0),
                        child: Center(
                            child: CircularProgressIndicator(
                          color: Colors.red,
                        )),
                      );
                    }

                    final poke = state.listPokeDetails[index];
                    return InkWell(
                      onTap: () => Navigator.of(context).pushReplacementNamed(
                        DetailUI.path,
                        arguments: DetailUIArgumentsModel(poke.id),
                      ),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 24),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Transform.scale(
                                  scale: 1.3,
                                  child: Image.network(
                                    poke.photoURL,
                                  ),
                                ),
                                Text(
                                    "${index + 1}. ${poke.name.capitalizeFirst}")
                              ]),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
