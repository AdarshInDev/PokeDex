// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:poke_dex/services/pokemoncontroller.dart';

// class PokemonPage extends StatefulWidget {
//   const PokemonPage({super.key});

//   @override
//   State<PokemonPage> createState() => _PokemonPageState();
// }

// class _PokemonPageState extends State<PokemonPage> {
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//         future: PokemonController().getPokemons(),
//         builder: (context, snapshot)  {
//            snapshot.data;
//           log(snapshot.data.toString());
//           log('1');
//           log(snapshot.data.toString());

//           final pokemons = snapshot.data;
//           return pokemons == null
//               ? const Scaffold(
//                   body: Center(
//                     child: CircularProgressIndicator(),
//                   ),
//                 )
//               : Scaffold(
//                   body: ListView.builder(
//                       itemCount: pokemons.length,
//                       itemBuilder: (context, index) {
//                         return Card(
//                           child: Image.network(
//                               pokemons[index].image.thumbnail.toString()),
//                         );
//                       }),
//                 );
//         });
//   }
// }

import 'package:flutter/material.dart';
import 'package:poke_dex/services/pokemoncontroller.dart';

class PokemonPage extends StatefulWidget {
  const PokemonPage({super.key});

  @override
  State<PokemonPage> createState() => _PokemonPageState();
}

class _PokemonPageState extends State<PokemonPage> {
  List<dynamic>? pokemons;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: PokemonController().getPokemons(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          pokemons = snapshot.data;
          return pokemons == null
              ? const Scaffold(
                  body: Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              : Scaffold(
                  body: ListView.builder(
                      itemCount: pokemons!.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: Image.network(
                              pokemons![index].image.thumbnail.toString()),
                        );
                      }),
                );
        } else if (snapshot.hasError) {
          return Scaffold(
            body: Center(
              child: SelectableText('Error: ${snapshot.error}'),
            ),
          );
        }
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
