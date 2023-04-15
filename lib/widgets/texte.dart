import 'package:flutter/material.dart';

class TexteWidjet extends StatelessWidget {
  const TexteWidjet({Key? key, required this.texte, required this.textsize, required this.textfont, required this.textcolor}) : super(key: key);
  final String texte;
  final double textsize;
  final FontWeight textfont;
  final Color textcolor;

  @override
  Widget build(BuildContext context) {
    return Text(
      texte,
      style: TextStyle(
        fontWeight: textfont,
        fontSize: textsize,
        color: textcolor
      ),
    );
  }
}
