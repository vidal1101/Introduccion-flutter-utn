import 'package:flutter/material.dart';

class Constantes {

  static Color colorIcons = Color.fromARGB(198, 255, 255, 255);

  BoxDecoration boxDecorationContainer = BoxDecoration(
        color: Colors.blue.withOpacity(0.7),
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black, 
            offset: Offset(10, 4), 
            blurRadius: 30, 
          )
        ]
  );


}