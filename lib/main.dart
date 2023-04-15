import 'package:flutter/material.dart';
import 'package:general/screen/celtiis.dart';
import 'package:general/screen/momopymnt.dart';
import 'package:general/screen/moovpmt.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Celtiis(),
    );
  }
}