import 'package:flutter/material.dart';
import 'package:moneyglitch/expense.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isExpanded = false; // Controls the visibility of the options

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to MoneyGlitch'),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.green[700],
      ),
      body: Stack(
        children: [
          const Center(
            child: Text(
              'Main Content Here',
              style: TextStyle(fontSize: 20),
            ),
          ),
          // Positioned buttons above the FAB
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 80.0, right: 20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Option 1 Button
                  Visibility(
                    visible: _isExpanded,
                    child: FloatingActionButton(
                      onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) {
                                    return const ExpenseScreen();
                                  },
                              ),
                          );
                      },
                      backgroundColor: Colors.green[700],
                      mini: false,
                      child: const Text(
                        "-",
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Option 2 Button
                  Visibility(
                    visible: _isExpanded,
                    child: FloatingActionButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Option 2 selected')),
                        );
                      },
                      backgroundColor: Colors.green[700],
                      mini: false,
                      child: const Text(
                        "+",
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Main FAB
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(16.0), // Adds padding from the edges
              child: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    _isExpanded = !_isExpanded; // Toggle visibility
                  });
                },
                backgroundColor: Colors.green[700],
                child: Icon(
                  _isExpanded ? Icons.close : Icons.menu,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
