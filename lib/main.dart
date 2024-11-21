import 'package:flutter/material.dart';
import 'budgetscreen.dart';
import 'homescreen.dart';
import 'trendsscreen.dart';

void main() => runApp(MaterialApp(
    home: LoginPage()
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
    const BudgetScreen(),
    const HomeScreen(),
    const TrendsScreen(),
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
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[700],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Money Glitch',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.green.shade100,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Helping Students Budget Wisely',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.green.shade200,
                ),
              ),
              const SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: const Icon(Icons.email, color: Colors.green),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: const Icon(Icons.lock, color: Colors.green),
                ),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  // Handle login action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade500,
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black87,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  // Navigate to sign-up page
                },
                child: Text(
                  'Don’t have an account? Sign Up',
                  style: TextStyle(
                    color: Colors.green.shade100,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
