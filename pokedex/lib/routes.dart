import 'package:flutter/material.dart';
import 'package:pokedex/features/detail/detail_ui.dart';
import 'package:pokedex/features/home/home_ui.dart';

final routes = {
  HomeUI.path: (BuildContext context) => const HomeUI(),
  DetailUI.path: (BuildContext context) => const DetailUI(),
};
