import 'package:flutter/widgets.dart';

class EstadoRegistrado extends ChangeNotifier {
  bool _estaIngresado = false;

  get estaIngresado => _estaIngresado;

  toggleIngresado() {
    _estaIngresado = !_estaIngresado;
    notifyListeners();
  }
}
