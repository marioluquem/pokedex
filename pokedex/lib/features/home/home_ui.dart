import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pokedex/features/home/bloc/home_bloc.dart';
import 'package:pokedex/widgets/pokemon_list.dart';

import 'package:pokedex/extensions/strings_ext.dart';

class HomeUI extends StatelessWidget {
  const HomeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pokédex")),
      body: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {},
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
                        child: Center(child: CircularProgressIndicator()),
                      );
                    }

                    final poke = state.listPokeDetails[index];
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 24),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              if (poke.imageURL != null)
                                Transform.scale(
                                  scale: 1.3,
                                  child: Image.network(
                                    poke.imageURL!,
                                  ),
                                ),
                              Text("${poke.id}. ${poke.name?.capitalizeFirst}")
                            ]),
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
