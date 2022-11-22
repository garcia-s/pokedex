import 'package:flutter/material.dart';
import 'package:pokedex/estado.dart';
import 'package:provider/provider.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("BIENVENIDO USUARIO A SU CUENTA"),
            RawMaterialButton(
              child: const Text("Cerrar sesion"),
              onPressed: () {
                EstadoRegistrado estado = Provider.of(context, listen: false);
                estado.toggleIngresado();
              },
            ),
          ],
        ),
      ),
    );
  }
}
