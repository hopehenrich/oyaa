import 'package:flutter/material.dart';

Widget bouton(String texte, VoidCallback press) {
  return ElevatedButton(
      onPressed: press,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        foregroundColor: MaterialStateProperty.all<Color>(const Color(0xffF24F04)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            )),
        side: MaterialStateProperty.all<BorderSide>(const BorderSide(
          width: 3,
          color: Color(0xfff24f04)
        )),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.symmetric(vertical: 10)),
      ),
      child: Text(
        texte,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 15,
        ),
      )
  );
}