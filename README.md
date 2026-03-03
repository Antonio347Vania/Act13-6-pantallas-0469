# myapp
# Android


# Web



## promt

En lenguaje Dart flutter, nivel básico.  necesito que recres estas pantallas exactamente como están, en la primera pantalla es la pantalla de inicio de un celular te voy a dar un ejemplo del código, para que lo tomes de ejemplo, pero que sea exactamente igual a la de la imagen: import 'package:flutter/material.dart';



void main() {

  runApp(const MiCelular());

}



class MiCelular extends StatelessWidget {

  const MiCelular({super.key});



  @override

  Widget build(BuildContext context) {

    return const MaterialApp(

      debugShowCheckedModeBanner: false,

      home: PantallaInicio(),

    );

  }

}



class PantallaInicio extends StatelessWidget {

  const PantallaInicio({super.key});



  final String fondoUrl =

      "https://raw.githubusercontent.com/Alvarado-Ingrid-0456/Imagenes-para-Flutter-6to-I-Fecha-11-Feb-2026/refs/heads/main/fondo.jpg";



  final String logoCometaUrl =

      "https://raw.githubusercontent.com/Alvarado-Ingrid-0456/Imagenes-para-Flutter-6to-I-Fecha-11-Feb-2026/refs/heads/main/logo.jpg";



  @override

  Widget build(BuildContext context) {

    double ancho = MediaQuery.of(context).size.width;

    double tamanoIcono = ancho > 600 ? 50 : 35;



    return Scaffold(

      body: Stack(

        children: [



          /// Fondo

          Container(

            decoration: BoxDecoration(

              image: DecorationImage(

                image: NetworkImage(fondoUrl),

                fit: BoxFit.cover,

              ),

            ),

          ),



          SafeArea(

            child: SingleChildScrollView(

              child: Padding(

                padding: const EdgeInsets.all(20),

                child: Column(

                  children: [



                    /// FILA 1

                    Row(

                      children: [



                        /// Clima

                        Expanded(

                          child: Container(

                            padding: const EdgeInsets.all(15),

                            decoration: BoxDecoration(

                              color: Colors.black54,

                              borderRadius: BorderRadius.circular(20),

                            ),

                            child: Row(

                              children: [

                                Icon(Icons.nightlight_round,

                                    color: Colors.white,

                                    size: tamanoIcono),

                                const SizedBox(width: 10),

                                const Column(

                                  crossAxisAlignment: CrossAxisAlignment.start,

                                  children: [

                                    Text(

                                      "7°",

                                      style: TextStyle(

                                          color: Colors.white,

                                          fontSize: 22),

                                    ),

                                    Text(

                                      "Nublado",

                                      style:

                                          TextStyle(color: Colors.white70),

                                    ),

                                  ],

                                )

                              ],

                            ),

                          ),

                        ),



                        const SizedBox(width: 20),



                        iconoApp(Icons.shop, "Play Store", tamanoIcono),

                      ],

                    ),



                    const SizedBox(height: 40),



                    /// FILA 2

                    Row(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children: [

                        iconoApp(Icons.photo, "Galería", tamanoIcono),

                        iconoApp(Icons.calendar_month, "Calendario", tamanoIcono),

                        iconoApp(Icons.settings, "Ajustes", tamanoIcono),

                      ],

                    ),



                    const SizedBox(height: 40),



                    /// FILA 3

                    Row(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children: [

                        iconoApp(Icons.access_time, "Reloj", tamanoIcono),

                        iconoApp(Icons.image_search, "Pinterest", tamanoIcono),

                        iconoApp(Icons.sports_esports, "Play Juegos", tamanoIcono),

                      ],

                    ),



                    const SizedBox(height: 40),



                    /// FILA 4

                    Row(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children: [



                        iconoApp(Icons.shopping_cart, "Amazon", tamanoIcono),



                        Column(

                          children: [

                            ClipRRect(

                              borderRadius: BorderRadius.circular(15),

                              child: Image.network(

                                logoCometaUrl,

                                height: tamanoIcono + 10,

                                width: tamanoIcono + 10,

                                fit: BoxFit.cover,

                              ),

                            ),

                            const SizedBox(height: 5),

                            const Text(

                              "Papelería Cometa",

                              style: TextStyle(

                                color: Colors.white,

                                fontSize: 12,

                              ),

                              textAlign: TextAlign.center,

                            ),

                          ],

                        ),

                      ],

                    ),

                  ],

                ),

              ),

            ),

          ),

        ],

      ),

    );

  }



  Widget iconoApp(IconData icono, String nombre, double tamano) {

    return Column(

      children: [

        Container(

          padding: const EdgeInsets.all(12),

          decoration: BoxDecoration(

            color: Colors.black45,

            borderRadius: BorderRadius.circular(15),

          ),

          child: Icon(

            icono,

            size: tamano,

            color: Colors.white,

          ),

        ),

        const SizedBox(height: 5),

        Text(

          nombre,

          style: const TextStyle(

            color: Colors.white,

            fontSize: 12,

          ),

          textAlign: TextAlign.center,

        ),

      ],

    );

  }

}  

Para la segunda pantalla necesito que recrees la pantalla, en este caso es una pantalla de carga de una aplicación, en mi caso Soriana, con el siguiente logo, en el centro necesito que el color del fondo lo hagas igual que el fondo del logo:

Para la tercera nececito que igual recres la imagen, en el appbar una barra de navegacion de hamburguesa en el lado superior izquierdo en medio el nombre del local (“Soriana”), y en la parte superior derecha el logo que ya te habia mandado, necesito que el appbar sea del mismo tono de color del logo. En el cuerpo, en el centro un widget  que tenga dentro (“martes y miércoles de frutas y verduras”) y que sea de color verde, y en los lados aparescan unas flechas que te pedan “llevar a los lados”. y en la parte de abajo pon los siguiente productos: Zanahoria, Pan, Manzana, que sean imagenes que se puedan poner desde la web,  el fondo del cuerpo de un color naranja muy bajito.


Navegación entre 3 paginas rutas nombradas en main() exclusivamente
Crear carpeta dentro de lib llamada mispantallas.
En cada pantalla appbar diferentes texto, diferente color fondo, con 2 iconos de actions.
En la pantalla inicial tu nombre y un apellido y grupo
Crear los nombres de los archivos  (3 en total) archivos (Inicio.dart, pantalla2 y pantalla3)
Según el diseno que se te asigno de acuerdo a tu numero de lista,aplicarlo a tu negocio debe apegarse al diseno que te toco.


A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
