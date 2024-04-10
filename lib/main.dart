import 'package:flutter/material.dart';
import 'package:poke_dex/pages/pokemon_list.dart';

void main() {
  runApp(const MaterialApp(
    title: 'PokeDex',
    home: PokemonPage(),
    debugShowCheckedModeBanner: false,
  ));
}



// appBar: AppBar(
//         title: const Center(
//             child: Text(
//           'PokeDex',
//           style: TextStyle(
//             color: Color.fromARGB(255, 227, 221, 59),
//             fontSize: 30,
//           ),
//         )),
//         backgroundColor: const Color.fromARGB(255, 181, 13, 13),
//       ),
//       body: const Center(
//         child: Text(
//           'Hello there I am your PokeDex',
//           style: TextStyle(
//               fontSize: 24,
//               color: Color.fromARGB(255, 15, 127, 101),
//               fontWeight: FontWeight.w600),
//         ),
//       ),
//       drawer: const Drawer(),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         backgroundColor: const Color.fromARGB(255, 227, 221, 59),
//         child: const Icon(Icons.refresh),
//       ),