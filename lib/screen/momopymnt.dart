import 'dart:io';

import 'package:flutter/material.dart';
import 'package:general/widgets/bouton.dart';
import 'package:general/widgets/texte.dart';

import '../widgets/field.dart';
import '../widgets/headerpymt.dart';

class Momo extends StatelessWidget {
  Momo({Key? key}) : super(key: key);

  final soldController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Header(back: () {}, imagepath: "images/Untitled-1 1.png"),
              const SizedBox(height: 10,),
              SizedBox(
                width: size.width/1.2,
                child: Field(
                    fieldcontrol: soldController,
                    ktype: TextInputType.number,
                    htext: "Entrez le solde",
                    ltext: "Solde",
                    icone: const Icon(Icons.payment),
                    iconcolor: Colors.black,
                    activeborder: true
                ),
              ),
              const SizedBox(height: 30,),
              SizedBox(
                width: size.width/1.2,
                child: Field(
                    fieldcontrol: phoneController,
                    ktype: TextInputType.phone,
                    htext: "Entrez votre numéro",
                    ltext: "Numéro",
                    icone: const Icon(Icons.phone_android),
                    iconcolor: Colors.black,
                    activeborder: true
                ),
              ),
              const SizedBox(height: 30,),
              SizedBox(
                width: size.width/1.2,
                child: btn("Confirmer", () { }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
