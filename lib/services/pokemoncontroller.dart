import 'dart:convert';
import 'dart:developer';

import 'package:poke_dex/model/pokemon_model.dart';
import 'package:poke_dex/services/api_service.dart';

class PokemonController {
  final pokeRepo = PokeRepo();

  Future<List<PokeModel>> getPokemons() async {
    final response = await pokeRepo.getPokemon();
    final data = jsonDecode(response.body);
    // log(response.body);
    List<PokeModel> pokemons = [];
    final List<Map<String, dynamic>> pokemonsJson = data['pokemonsters'];

    pokemons.addAll(pokemonsJson.map((e) => PokeModel.fromJson(e)).toList());
    log('1');
    log(pokemonsJson.toString());
    for (Map<String, dynamic> pokemonJson in pokemonsJson) {
      log(pokemonJson['id'].toString());
      pokemons.add(PokeModel.fromJson(pokemonJson));
    }
    log(pokemons.toString());
    return pokemons;
  }
}
