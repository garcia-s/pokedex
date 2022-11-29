import 'package:flutter/material.dart';

class MiBoton extends StatelessWidget {
  const MiBoton({super.key, required this.color, required this.icono});
  final Color color;
  final IconData icono;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 200,
        width: 200,
        child: RawMaterialButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          onPressed: () {},
          fillColor: color,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Icon(icono, size: 50,),
                const SizedBox(height: 20,),
                const Text('Acceso Usb'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}