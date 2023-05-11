import 'package:flutter/material.dart';

class PasswordWidgetController{
  //cacher la saisie
  static bool getObscure(bool isObscure) => !isObscure;

  //modifier l'icône
  static Icon getIcon(bool isObscure) {
    if(isObscure) return const Icon(Icons.visibility);
    return const Icon(Icons.visibility_off);
  }
}

