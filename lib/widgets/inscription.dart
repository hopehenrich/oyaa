import 'package:flutter/material.dart';
import 'package:general/widgets/bouton.dart';
import 'package:general/widgets/field.dart';
import 'package:general/widgets/texte.dart';

class Inscription extends StatelessWidget {
  Inscription({Key? key}) : super(key: key);

  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: size.width /  2.0,
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Image.asset("images/Fast-delivery-package-by-scooter-mobile-phone-order-vector-PNG 1.png"),
              ),
              const SizedBox(height: 25,),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: const TexteWidjet(
                    texte: "S'inscrire",
                    textsize: 18,
                    textfont: FontWeight.bold,
                    textcolor: Colors.black
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: const TexteWidjet(
                    texte: "Veuillez entrer vos informations",
                    textsize: 14,
                    textfont: FontWeight.w400,
                    textcolor: Colors.black
                ),
              ),
              const SizedBox(height: 40,),
              Container(
                margin: const EdgeInsets.only(left: 20),
                width: size.width/1.2,
                child: Field(
                    fieldcontrol: passController,
                    ktype: TextInputType.text,
                    htext: "Entre votre nom",
                    ltext: "Nom",
                    icone: const Icon(Icons.person),
                    iconcolor: Colors.black,
                    activeborder: true
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                margin: const EdgeInsets.only(left: 20),
                width: size.width/1.2,
                child: Field(
                    fieldcontrol: passController,
                    ktype: TextInputType.text,
                    htext: "Entre votre prénom",
                    ltext: "Prénom",
                    icone: const Icon(Icons.person),
                    iconcolor: Colors.black,
                    activeborder: true
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                margin: const EdgeInsets.only(left: 20),
                width: size.width/1.2,
                child: Field(
                    fieldcontrol: emailController,
                    ktype: TextInputType.emailAddress,
                    htext: "Entre votre email",
                    ltext: "Email",
                    icone: const Icon(Icons.email),
                    iconcolor: Colors.black,
                    activeborder: true
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                margin: const EdgeInsets.only(left: 20),
                width: size.width/1.2,
                child: Field(
                    fieldcontrol: passController,
                    ktype: TextInputType.text,
                    htext: "Entre votre mot de passe",
                    ltext: "Password",
                    icone: const Icon(Icons.password),
                    iconcolor: Colors.black,
                    activeborder: true
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                  margin: const EdgeInsets.only(left: 20),
                  width: size.width/1.2,
                  child: btn("Se connecter", () { })
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const TexteWidjet(
                      texte: "Vous avez déjà un compte?",
                      textsize: 15,
                      textfont: FontWeight.bold,
                      textcolor: Colors.black
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Connectez vous",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color(0xfff24f04)
                        ),
                      )
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
