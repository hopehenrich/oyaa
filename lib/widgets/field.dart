import 'package:flutter/material.dart';

class Field extends StatelessWidget {
  const Field({Key? key,
    required this.fieldcontrol,
    required this.ktype,
    required this.htext,
    required this.ltext,
    required this.icone,
    required this.iconcolor,
    required this.activeborder}) : super(key: key);

  final TextEditingController fieldcontrol;
  final TextInputType ktype;
  final String htext;
  final String ltext;
  final Icon icone;
  final Color iconcolor;
  final bool activeborder;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: fieldcontrol,
      keyboardType: ktype,
      decoration: InputDecoration(
          hintText: htext,
          labelText: ltext,
          suffixIcon: icone,
          suffixIconColor: iconcolor,
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          enabledBorder: activeborder ? const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(20))
          ) : InputBorder.none,
          focusedBorder: activeborder ? const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xfff24f04)),
              borderRadius: BorderRadius.all(Radius.circular(20))
          ) : InputBorder.none

      ),
    );
  }
}
