import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget HorizontalList(screenHeight, screenWidth ){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        color: Colors.white,
        height: screenHeight/3.5,
        width: screenWidth/1.4,
      ),
    ),
  );
}