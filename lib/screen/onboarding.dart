import 'package:flutter/material.dart';

import '../widgets/bouton.dart';
import '../widgets/btnwhite.dart';
import '../widgets/texte.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
            child: SizedBox(
              width: size.width,
              height: size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: size.width,
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    child: Image.asset("images/Fast-delivery-package-with-motorcycle-illustration-transparent-PNG 1.png"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Center(
                    child: TexteWidjet(
                        texte: "Bienvenue chez nous",
                        textsize: 25.0,
                        textfont: FontWeight.bold,
                        textcolor: Colors.black
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Center(
                    child: TexteWidjet(
                        texte: "Trouvez des livreurs pour toutes vos \nlivraisons dans votre entourage",
                        textsize: 20.0,
                        textfont: FontWeight.w300,
                        textcolor: Colors.black
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: SizedBox(
                      width: size.width/1.3,
                      child: btn("Se connecter", () {}),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: SizedBox(
                      width: size.width/1.3,
                      child: bouton("S'inscire", () {}),
                    ),
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}
