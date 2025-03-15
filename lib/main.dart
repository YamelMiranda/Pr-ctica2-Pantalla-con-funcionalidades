import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Practica 2 - Yamel Miranda',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
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
        title: const Text('PerFil ProFesional'),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: TarjetaPerfil(),
      ),
    );
  }
}

class TarjetaPerfil extends StatelessWidget {
  const TarjetaPerfil({super.key});

  Widget _buildEstadistica(String titulo, String valor, Icon icono) {
    return Column(
      children: [
        icono,
        Text(
          valor,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        Text(
          titulo,
          style: const TextStyle(
            color: Colors.grey,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.blueAccent,
                child: Icon(Icons.person, size: 50, color: Colors.white),
              ),
              Positioned(
                bottom: 5,
                right: 5,
                child: CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.verified, color: Colors.blue, size: 18),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Text(
            'Yamel Miranda',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Desarrolladora Flutter',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 8,
            children: const [
              Chip(label: Text("Flutter")),
              Chip(label: Text("Dart")),
              Chip(label: Text("Firebase")),
              Chip(label: Text("Git")),
              Chip(label: Text("UI/UX")),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.facebook, size: 30)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.insert_emoticon, size: 30)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt, size: 30)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.apps, size: 30)),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.mail),
                label: const Text("Contactar"),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.download),
                label: const Text("CV"),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildEstadistica('Posts', '255', const Icon(Icons.podcasts)),
              _buildEstadistica('Seguidores', '12k', const Icon(Icons.people)),
              _buildEstadistica('Siguiendo', '458', const Icon(Icons.arrow_upward)),
            ],
          ),
        ],
      ),
    );
  }
}
