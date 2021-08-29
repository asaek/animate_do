import 'package:flutter/material.dart';

class NavegacionProvider with ChangeNotifier {
  int _numero = 0;

  int get numero => this._numero;
  set numero(int dato) {
    this._numero = dato;
    notifyListeners();
  }

  AnimationController? bounceController;

  // AnimationController get bounceController => this._bounceController!;
  // set bounceController(AnimationController dato) {
  //   this._bounceController = dato;
  //   // notifyListeners();
  // }
}
