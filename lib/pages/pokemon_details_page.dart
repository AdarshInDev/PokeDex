import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:poke_dex/model/pokemon_model.dart';

class PokemonList extends StatefulWidget {
  const PokemonList({super.key});

  @override
  State<PokemonList> createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  var url = Uri.https('raw.githubusercontent.com',
      'Purukitto/pokemon-data.json/master/pokedex.json');
  PokeModel pokeModel = PokeModel();
  @override
  void initState() {
    super.initState();
    // TODO: implement initState

    fetchData();
  }

  fetchData() async {
    var res = await http.get(url);
    var decodedJson = jsonDecode(res.body);
    print(res.body);
    pokeModel = PokeModel.fromJson(decodedJson);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Pokemon_ LIST'),
        ),
        body: ListView.builder(itemBuilder: (context, index) {
          return Card(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    (pokeModel.image.toString()),
                  ),
                ),
              ),
            ),
          );
        }));
  }
}
