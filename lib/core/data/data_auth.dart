




import 'package:flutter/material.dart';

class DataAuthHeadScreen{
  final String image;
    final String title;
  final String body;
  final String? buttonname;
  final Function(BuildContext)? function;
  final int counter;

  DataAuthHeadScreen( {required this.image, required this.title, required this.body, required this.buttonname, required this.function,required this.counter,});

}