import 'package:flutter/material.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xFFFFF3E0),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFFF7BD4F)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_basket, size: 50, color: Colors.white),
                  SizedBox(height: 10),
                  Text("MENÚ SORIANA", style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            _buildLink(context, Icons.home, "Inicio Celular", '/'),
            _buildLink(context, Icons.store, "Frutas y Verduras", '/pantalla3'),
            _buildLink(context, Icons.egg, "Lácteos", '/pantalla4'),
            _buildLink(context, Icons.kebab_dining, "Carnes", '/pantalla5'),
            _buildLink(context, Icons.inventory_2, "Despensa", '/pantalla6'),
          ],
        ),
      ),
    );
  }

  Widget _buildLink(BuildContext context, IconData icon, String text, String route) {
    return ListTile(
      leading: Icon(icon, color: Colors.orange),
      title: Text(text, style: const TextStyle(fontWeight: FontWeight.bold)),
      onTap: () {
        Navigator.pop(context);
        Navigator.pushNamed(context, route);
      },
    );
  }
}