import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Upper extends StatelessWidget {
  const Upper({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          'Level',
          style: GoogleFonts.getFont('Press Start 2P', fontSize: 20),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 0, right: 45),
          child: Container(
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(10, 10),
                    spreadRadius: 2,
                    blurRadius: 15,
                  )
                ],
                color: Colors.red[300],
                borderRadius: const BorderRadius.all(
                  Radius.circular(30),
                ),
                image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://e7.pngegg.com/pngimages/175/50/png-clipart-serena-ash-ketchum-pokemon-sun-and-moon-xy-z-serena-face-hat-thumbnail.png"))),
            width: MediaQuery.of(context).size.width / 3.45,
            height: MediaQuery.of(context).size.height / 7,
          ),
        ),
        Text(
          '99',
          style: GoogleFonts.getFont('Press Start 2P', fontSize: 20),
        ),
      ],
    );
  }
}
