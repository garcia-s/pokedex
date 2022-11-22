import 'package:flutter/material.dart';
import 'package:pokedex/estado.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RawMaterialButton(
          child: const Text("Login"),
          onPressed: () {
            EstadoRegistrado estado = Provider.of(context, listen: false);
            estado.toggleIngresado();
          },
        ),
      ),
    );
  }
}
