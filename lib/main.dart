import 'package:flutter/material.dart';
import 'budgetscreen.dart';
import 'homescreen.dart';
import 'trendsscreen.dart';

void main() => runApp(MaterialApp(
    home: Home()
));

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int myIndex = 1;

  // Updated list of widgets for each screen
  List<Widget> widgetList = [
    BudgetScreen(),
    HomeScreen(),
    TrendsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetList[myIndex], // Display the selected screen
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.green[700],
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              myIndex = index;
            });
          },
          currentIndex: myIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.money),
              label: 'Budget',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.auto_graph),
              label: 'Trends',
            ),
          ]),
    );
  }
}