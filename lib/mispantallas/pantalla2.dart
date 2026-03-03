import 'package:flutter/material.dart';

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

  @override
  Widget build(BuildContext context) {
    const Color colorFondo = Color(0xFFF7BD4F); // Color amarillo del logo

    return Scaffold(
      backgroundColor: colorFondo,
      // Añadimos el AppBar invisible solo para la flecha de regreso
      appBar: AppBar(
        backgroundColor: colorFondo,
        elevation: 0, // Sin sombra para que no se note el AppBar
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black, size: 30),
          onPressed: () => Navigator.pop(context), // Regresa al inicio azul
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo central
            Image.network(
              "https://raw.githubusercontent.com/Antonio347Vania/im-genes-para-flutter-6toI-11-Feb-2026/refs/heads/main/logo.jpg", 
              width: 250
            ),
            const SizedBox(height: 80),
            // Botón de acceso
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  side: const BorderSide(color: Colors.black, width: 2),
                ),
              ),
              onPressed: () => Navigator.pushNamed(context, '/pantalla3'),
              child: const Text(
                "ENTRAR A TIENDA",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}