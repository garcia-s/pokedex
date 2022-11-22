import 'package:flutter/material.dart';
import 'package:pokedex/estado.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            RawMaterialButton(
              child: const Text("Volver al Login"),
              onPressed: () {
                EstadoRegistrado estado = Provider.of(context, listen: false);
                estado.cambiaringresado('login');
              },
            ),
          ],
        ),
      ),
    );
  }
}
