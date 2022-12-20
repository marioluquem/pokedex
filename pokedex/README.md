# pokedex

A simple pokedex app

## Getting Started
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

In case of not beign able to run the app in Visual code, I'm leaving in the project's root folder the "mariospokedex.apk" file so anyone can install it in their devices and test it on Android. And for iOS I generated a link so anyone can download the app from there https://i.diawi.com/APMrVW. If have any questions about something please text me to my whatsapp or my email marioluquem@hotmail.com

- Install flutter if you dont have it (version 3.3.5):
    https://docs.flutter.dev/get-started/install/macos
    https://docs.flutter.dev/get-started/install/windows
- Open the project in Visual Code
- Run the command "flutter clean"
- Run the command "flutter pub get"
- In case of an error with the classes freezed please run the following command: flutter packages pub run build_runner build --delete-conflicting-outputs
- Press F1 (or CMD+F1) to select the device to use (emulator or physical device)
- Press F5 (or CMD+F5) to run the project
- Use the app