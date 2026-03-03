import 'package:flutter/material.dart';
import 'mispantallas/inicio.dart';
import 'mispantallas/pantalla2.dart';
import 'mispantallas/pantalla3.dart';
import 'mispantallas/pagina2.dart';
import 'mispantallas/pagina3.dart';
import 'mispantallas/pagina4.dart';

void main() => runApp(const MiAppSoriana());

class MiAppSoriana extends StatelessWidget {
  const MiAppSoriana({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Soriana App',
      initialRoute: '/',
      routes: {
        '/': (context) => const Inicio(),
        '/pantalla2': (context) => const Pantalla2(),
        '/pantalla3': (context) => const Pantalla3(),
        '/pantalla4': (context) => const Pagina2(),
        '/pantalla5': (context) => const Pagina3(),
        '/pantalla6': (context) => const Pagina4(),
      },
    );
  }
}