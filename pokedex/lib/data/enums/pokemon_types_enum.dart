import 'package:flutter/material.dart';

enum PokemonTypesEnum {
  normal(Colors.grey, "normal"),
  fire(Colors.red, "fire"),
  water(Colors.blue, "water"),
  grass(Colors.green, "grass"),
  electric(Colors.yellow, "electric"),
  ice(Colors.lightBlue, "ice"),
  poison(Colors.pink, "poison"),
  psychic(Colors.purple, "psychic"),
  fighting(Colors.red, "fighting"),
  ground(Colors.brown, "ground"),
  rock(Colors.grey, "rock"),
  bug(Colors.lightGreen, "bug"),
  flying(Colors.lightBlue, "flying"),
  ghost(Colors.purple, "ghost"),
  dragon(Colors.amber, "dragon"),
  steel(Colors.grey, "steel"),
  dark(Colors.black, "dark");

  const PokemonTypesEnum(this.color, this.name);

  final Color color;
  final String name;
}
