import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Oculta el banner de debug
      title: 'Floating Action Buttons',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, // Centra el título
        title: const Text(
          'Floating Action Buttons',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildFAB(
                  "Mini",
                  FloatingActionButton.small(
                    onPressed: () {},
                    backgroundColor: Colors.blue,
                    shape: const CircleBorder(),
                    child: const Icon(Icons.add, color: Colors.white),
                  )),
              _buildFAB(
                  "Medium",
                  FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Colors.blue,
                    shape: const CircleBorder(),
                    child: const Icon(Icons.add, color: Colors.white),
                  )),
              _buildFAB(
                  "Extended",
                  FloatingActionButton.extended(
                    onPressed: () {},
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30), // Botón ovalado
                    ),
                    label: const Text("Add",
                        style: TextStyle(color: Colors.white)),
                    icon: const Icon(Icons.add, color: Colors.white),
                  )),
              _buildFAB(
                  "Large",
                  FloatingActionButton.large(
                    onPressed: () {},
                    backgroundColor: Colors.blue,
                    shape: const CircleBorder(),
                    child: const Icon(Icons.add, color: Colors.white),
                  )),
            ],
          ),

          // Barra inferior con 3 botones
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            color: Colors.grey[200],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildSquareButton("Primero", Colors.blue),
                _buildSquareButton("Segundo", Colors.purple),
                _buildSquareButton("Tercero", Colors.green),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFAB(String label, Widget button) {
    return Column(
      children: [
        Text(label,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        button,
        const SizedBox(height: 30),
      ],
    );
  }

  // Botón cuadrado con texto y un cuadro blanco más pequeño
  Widget _buildSquareButton(String text, Color color) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // Botón cuadrado
        ),
        padding: const EdgeInsets.all(20),
      ),
      child: Column(
        children: [
          Text(text,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold)),
          const SizedBox(height: 5),
          Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:
                  BorderRadius.circular(4), // Cuadro blanco más pequeño
            ),
          ),
        ],
      ),
    );
  }
}
