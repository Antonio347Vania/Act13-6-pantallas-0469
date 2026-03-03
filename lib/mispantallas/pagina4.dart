import 'package:flutter/material.dart';
import '../widgets/menu_lateral.dart';
import '../widgets/barra_navegacion.dart';

class Pagina4 extends StatelessWidget {
  const Pagina4({super.key});

  @override
  Widget build(BuildContext context) {
    final productos = [
      {'n': 'Aceite', 'p': '\$42.00', 'i': 'https://raw.githubusercontent.com/Antonio347Vania/im-genes-para-flutter-6toI-11-Feb-2026/refs/heads/main/Aceite%20Aguacate.jpg'},
      {'n': 'Arroz', 'p': '\$24.50', 'i': 'https://raw.githubusercontent.com/Antonio347Vania/im-genes-para-flutter-6toI-11-Feb-2026/refs/heads/main/Arroz.jpg'},
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFFFF3E0),
      appBar: AppBar(title: const Text("Despensa"), backgroundColor: Colors.blue),
      drawer: const MenuLateral(),
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.all(15), child: Text("Artículos Despensa", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blue))),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 0.8, crossAxisSpacing: 10, mainAxisSpacing: 10),
              itemCount: productos.length,
              itemBuilder: (context, i) => Card(
                shape: RoundedRectangleBorder(side: const BorderSide(width: 1), borderRadius: BorderRadius.circular(10)),
                child: Column(children: [
                  Expanded(child: Image.network(productos[i]['i']!, fit: BoxFit.contain)),
                  Text(productos[i]['n']!, style: const TextStyle(fontWeight: FontWeight.bold)),
                  Text(productos[i]['p']!, style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
                ]),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BarraNavegacion(),
    );
  }
}