import 'package:flutter/material.dart';
import 'package:general/widgets/texte.dart';

class Header extends StatelessWidget {
  const Header({Key? key, required this.back, required this.imagepath}) : super(key: key);
  final VoidCallback back;
  final String imagepath;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.width/1.5,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: size.width/2.3,
            color: const Color(0xfff24f04),
          ),
          Positioned(
            top: 15,
            left: 20,
            child: Row(
              children: [
                IconButton(
                    onPressed: back,
                    icon: const Icon(Icons.arrow_back, color: Colors.white, size: 25,)
                ),
                const SizedBox(width: 10,),
                const TexteWidjet(
                    texte: "Méthode de payment",
                    textsize: 17,
                    textfont: FontWeight.bold,
                    textcolor: Colors.white
                )
              ],
            ),
          ),
          Positioned(
              top: size.width/4,
              left: 30,
              child: SizedBox(
                width: size.width/3,
                height: size.width/3,
                child: Image.asset(imagepath),
              )
          )
        ],
      ),
    );
  }
}
