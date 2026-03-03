import 'package:flutter/material.dart';

class BarraNavegacion extends StatelessWidget {
  const BarraNavegacion({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Colors.black12, width: 1)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Botón de Recientes (Signo =)
          const Icon(Icons.menu, color: Colors.black45, size: 28),
          
          // Botón de Home (Signo O)
          IconButton(
            icon: const Icon(Icons.circle_outlined, color: Colors.black45, size: 28),
            onPressed: () => Navigator.pushNamed(context, '/'),
          ),
          
          // Botón de Atrás (Signo <)
          IconButton(
            icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black45, size: 24),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}