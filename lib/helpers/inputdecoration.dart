import 'package:flutter/material.dart';

class InputDecortacionCustom {

  static InputDecoration getInputDecoration ({
    required String labelText,
    required String hintText,
    IconData? prefixIcon,
  }){
    return InputDecoration(
      labelText: labelText,
      hintText: hintText, 
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.purple, 
          style: BorderStyle.solid,
        )
      ), 
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.blueAccent, 
          style: BorderStyle.solid,
        )
      ), 
      prefixIcon: prefixIcon != null ? 
      Icon(prefixIcon, color: Colors.purple,) : null
    );
  }

}