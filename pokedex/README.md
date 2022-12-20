# pokedex

A simple pokedex app

## Getting Started

To run freezed build runner: flutter packages pub run build_runner build --delete-conflicting-outputs

## Important Note about the pokemon's detail, please read:

After implementing the PokeAPI realized that the evolution data is wrong in the API itself. So when entering the pokemon's detail page will show evolutions, however, not it's correct evolutions, but what the API brings for that pokemon. Example:
Search this URL (charmander ID 4) => https://pokeapi.co/api/v2/evolution-chain/4/
Shows evolutions => metapod, butterfree

It's not an app bug, but an API's :)

##