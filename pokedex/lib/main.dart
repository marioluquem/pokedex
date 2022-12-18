import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/di.dart';
import 'package:pokedex/features/home/bloc/home_bloc.dart';
import 'package:pokedex/features/home/home_ui.dart';

void main() {
  setupGetItDependencyInjection();

  return runApp(MultiBlocProvider(providers: [
    BlocProvider<HomeBloc>(
      create: (context) => getIt<HomeBloc>()..add(HomeInitialEvent()),
    )
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Pokédex', home: HomeUI());
  }
}
