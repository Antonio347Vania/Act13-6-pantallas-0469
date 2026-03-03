import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3A91D0),
      appBar: AppBar(
        title: const Text("Tu Nombre - 6to I"), 
        backgroundColor: const Color(0xFF1E88E5),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // Widget de Clima
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: const Color(0xFF81D4FA), 
                borderRadius: BorderRadius.circular(25), 
                border: Border.all(color: Colors.white, width: 2)
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.wb_sunny, color: Colors.yellow, size: 40),
                  Text("16°", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  Text("C 21°-7°\nC 19°-6°", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                ],
              ),
            ),
            const SizedBox(height: 30),
            // Barra Google
            Container(
              height: 45, 
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(25)), 
              child: const Center(child: Text("Google", style: TextStyle(color: Colors.grey)))
            ),
            const SizedBox(height: 40),
            // Apps
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _appIcon(context, Icons.shopping_cart, const Color(0xFFF7BD4F), true),
                _appIcon(context, Icons.search, Colors.white, false),
                _carpetaApps(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _appIcon(BuildContext context, IconData icon, Color bg, bool nav) {
    return GestureDetector(
      onTap: () => nav ? Navigator.pushNamed(context, '/pantalla2') : null,
      child: Container(
        width: 70, height: 70, 
        decoration: BoxDecoration(color: bg, borderRadius: BorderRadius.circular(15), border: Border.all(width: 1.5)), 
        child: Icon(icon, size: 35)
      ),
    );
  }

  Widget _carpetaApps() {
    return Container(
      width: 75, padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), border: Border.all(width: 1.5)),
      child: GridView.count(
        shrinkWrap: true, crossAxisCount: 2, mainAxisSpacing: 5, crossAxisSpacing: 5,
        children: const [
          Icon(Icons.facebook, size: 18, color: Colors.blue),
          Icon(Icons.play_arrow, size: 18, color: Colors.red),
          Icon(Icons.camera_alt, size: 18, color: Colors.green),
          Icon(Icons.message, size: 18, color: Colors.orange),
        ],
      ),
    );
  }
}