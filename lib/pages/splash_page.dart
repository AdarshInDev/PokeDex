import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'POKEDEX',
          style: GoogleFonts.getFont(
            'Press Start 2P',
            fontSize: 35,
            color: const Color.fromARGB(255, 189, 36, 72),
          ),
        )),
      ),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 40, left: 40, right: 40, bottom: 30),
            child: Image.network(
                fit: BoxFit.cover,
                "https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/International_Pok%C3%A9mon_logo.svg/1200px-International_Pok%C3%A9mon_logo.svg.png"),
          ),
          Image.asset(
            height: MediaQuery.of(context).size.height / 1.71,
            "lib/assets/images/ashpoke_splash.jpg",
          )
        ],
      ),
    );
  }
}
