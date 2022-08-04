import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:project/screens/home_page/home_page.dart';

void main()
{
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}

// ignore: camel_case_types

