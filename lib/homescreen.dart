import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to MoneyGlitch'),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.green[700],
      ),
      floatingActionButton: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(20),
            backgroundColor: Colors.green[700],
            foregroundColor: Colors.white,
          ),
          child: const Icon(Icons.menu, color: Colors.white),


      ),
    );
  }
}