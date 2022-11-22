import 'package:flutter/widgets.dart';

class EstadoRegistrado extends ChangeNotifier {
  String _estaIngresado = 'login';

  get estaIngresado => _estaIngresado;

  cambiaringresado(String valor) {
    _estaIngresado = valor;
    notifyListeners();
  }
}
