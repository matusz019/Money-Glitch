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
      body: Center(
        child: PopupMenuButton(
          surfaceTintColor: Colors.white,
          color: Colors.green[700],
          icon: const Icon(Icons.menu, color: Colors.black),
          itemBuilder: (BuildContext context) {
            return[

            ];
          },

        ),
      ),
    );
  }
}