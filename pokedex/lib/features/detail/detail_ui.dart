import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/data/model/detail_ui_arguments_model.dart';
import 'package:pokedex/data/model/pokemon_details_model.dart';
import 'package:pokedex/features/detail/bloc/detail_bloc.dart';

class DetailUI extends StatelessWidget {
  static const String path = 'detail';
  const DetailUI({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments;
    if (args is DetailUIArgumentsModel) {
      context.read<DetailBloc>().add(DetailInitialEvent(args.pokeId));
    }
    return Scaffold(
      body: BlocConsumer<DetailBloc, DetailState>(
        listener: (context, state) {
          if (state is DetailErrorState) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.errorMsg)));
          }
        },
        builder: (context, state) {
          if (state is DetailDataLoadedState) {
            final poke = state.pokeDetails;
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                if (poke.imageURL != null) Image.network(poke.imageURL!),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Column(
                      children: [
                        Text(poke.name!),
                      ],
                    ),
                  ),
                )
              ],
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            );
          }
        },
      ),
    );
  }
}
