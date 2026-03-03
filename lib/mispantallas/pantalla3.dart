import 'package:flutter/material.dart';
import '../widgets/menu_lateral.dart';
import '../widgets/barra_navegacion.dart';

class Pantalla3 extends StatelessWidget {
  const Pantalla3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF3E0),
      appBar: AppBar(title: const Text("Soriana"), centerTitle: true, backgroundColor: const Color(0xFFF7BD4F)),
      drawer: const MenuLateral(),
      body: Column(
        children: [
          const SizedBox(height: 30),
          _banner(),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _prod("1kg Zanahoria", "https://raw.githubusercontent.com/Antonio347Vania/im-genes-para-flutter-6toI-11-Feb-2026/refs/heads/main/Zanahoria.jpg"),
              _prod("Pan Dulce", "https://raw.githubusercontent.com/Antonio347Vania/im-genes-para-flutter-6toI-11-Feb-2026/refs/heads/main/pan.jpg"),
              _prod("1kg Manzana", "https://raw.githubusercontent.com/Antonio347Vania/im-genes-para-flutter-6toI-11-Feb-2026/refs/heads/main/manzana%20roja.jpg"),
            ],
          ),
        ],
      ),
      bottomNavigationBar: const BarraNavegacion(),
    );
  }

  Widget _banner() {
    return Container(
      width: 280, padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(color: const Color(0xFF4CAF50), border: Border.all(width: 2)),
      child: const Text("Martes & Miércoles\nde Frutas y Verduras", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
    );
  }

  Widget _prod(String n, String i) {
    return Column(children: [
      Container(width: 85, height: 85, decoration: BoxDecoration(color: Colors.white, border: Border.all(width: 1.5), borderRadius: BorderRadius.circular(15)), child: Image.network(i)),
      const SizedBox(height: 5),
      Text(n, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 10)),
    ]);
  }
}