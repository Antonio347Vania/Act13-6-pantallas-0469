import 'package:flutter/material.dart';
import '../widgets/menu_lateral.dart';
import '../widgets/barra_navegacion.dart';

class Pagina2 extends StatelessWidget {
  const Pagina2({super.key});

  @override
  Widget build(BuildContext context) {
    final productos = [
      {'n': 'Leche Entera', 'p': '\$28.50', 'i': 'https://raw.githubusercontent.com/Antonio347Vania/im-genes-para-flutter-6toI-11-Feb-2026/refs/heads/main/leche.jpg'},
      {'n': 'Yogurt Griego', 'p': '\$45.00', 'i': 'https://raw.githubusercontent.com/Antonio347Vania/im-genes-para-flutter-6toI-11-Feb-2026/refs/heads/main/450f4dc95915b5c09d724dadb1ab284c.jpg'},
      {'n': 'Queso Crema', 'p': '\$32.00', 'i': 'https://raw.githubusercontent.com/Antonio347Vania/im-genes-para-flutter-6toI-11-Feb-2026/refs/heads/main/queso%20crema.jpg'},
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFFFF3E0),
      appBar: AppBar(title: const Text("Lácteos"), backgroundColor: Colors.orange),
      drawer: const MenuLateral(),
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.all(15), child: Text("Productos Lácteos", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.orange))),
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