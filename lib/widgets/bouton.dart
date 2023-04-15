import 'package:flutter/material.dart';

Widget btn(String texte, VoidCallback press) {
  return ElevatedButton(
      onPressed: press,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(const Color(0xffF24F04)),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
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
