import 'package:flutter/material.dart';

class FormUser extends ChangeNotifier {

  String nombre = "";
  String Apellido = "";
  int edad = 0;
  String telefono = "";
  String correo = "";

  GlobalKey<FormState> formkey = GlobalKey<FormState>();


}