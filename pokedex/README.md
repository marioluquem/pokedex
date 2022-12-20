# pokedex

A simple pokedex app

## Getting Started

To run freezed build runner: flutter packages pub run build_runner build --delete-conflicting-outputs

## Important Note about the pokemon's detail, please read:

After implementing the PokeAPI realized that the evolution data is wrong in the API itself. So when entering the pokemon's detail page will show evolutions, however, not it's correct evolutions, but what the API brings for that pokemon. Example:
Search this URL (charmander ID 4) => https://pokeapi.co/api/v2/evolution-chain/4/
Shows evolutions => metapod, butterfree

It's not an app bug, but an API's :)

## Technologies used

- PokeAPI.co: for the app data https://pokeapi.co/
- Dio: for data retrievement from the PokeAPI
- BloC and Flutter_Bloc: for state management https://pub.dev/packages/bloc - https://pub.dev/packages/flutter_bloc
- Freezed package and dependencies: for Classes modeling and methods creation (toJson, fromJson, copyWith) https://pub.dev/packages/freezed
- Get it: for dependency injection https://pub.dev/packages/get_it
- Logger: to show error and Log information https://pub.dev/packages/logger
- Flutter launcher icons: for app icon generation https://pub.dev/packages/flutter_launcher_icons

## Intructions to install the app

