import 'package:flutter/material.dart';

ThemeData theme(){
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Avenier",
    textTheme: textTheme(),
  );
}
TextTheme textTheme(){
  return TextTheme(
    headline1: TextStyle(
      fontSize: 32,
      fontFamily: "Avenir",
      color: Colors.black,
      fontWeight: FontWeight.bold
    ),
    headline2: TextStyle(
          fontSize: 24,
          fontFamily: "Avenir",
          color: Colors.black,
          fontWeight: FontWeight.bold),
   headline3: TextStyle(
          fontSize: 18,
          fontFamily: "Avenir",
          color: Colors.black,
          fontWeight: FontWeight.bold
          ),
  headline4: TextStyle(
          fontSize: 16,
          fontFamily: "Avenir",
          color: Colors.black,
          fontWeight: FontWeight.bold
          ),
  headline5: TextStyle(
      fontSize: 14,
      fontFamily: "Avenir",
      color: Colors.black,
      fontWeight: FontWeight.bold
    ),
  bodyText1 :TextStyle(
          fontSize: 12,
          fontFamily: "Avenir",
          color: Colors.black,
          fontWeight: FontWeight.bold
          ),
    bodyText2: TextStyle(
          fontSize: 10,
          fontFamily: "Avenir",
          color: Colors.black,
          fontWeight: FontWeight.bold)
  
  );
}