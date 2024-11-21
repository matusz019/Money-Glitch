import 'package:flutter/material.dart';

class IncomeScreen extends StatefulWidget {
  const IncomeScreen({super.key});

  @override
  State<IncomeScreen> createState() => _IncomeScreenState();
}

class _IncomeScreenState extends State<IncomeScreen> {
  final List<String> _incomeFrequencyOptions = [
    'One-off',
    'Every 4 Weeks',
    'Every Month',
    'Every Year',
  ];

  String? _selectedFrequency; // Variable to store the selected frequency

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add an Income'),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.green[700],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Income Type",
              ),
            ),
            const SizedBox(height: 16), // Space between the fields
            TextFormField(
              keyboardType: TextInputType.number, // Numeric keyboard
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Income Amount £",
              ),
            ),
            const SizedBox(height: 16), // Space before the dropdown
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Income Frequency",
              ),
              value: _selectedFrequency,
              items: _incomeFrequencyOptions.map((String frequency) {
                return DropdownMenuItem<String>(
                  value: frequency,
                  child: Text(frequency),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedFrequency = newValue;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
} // Closing bracket for _IncomeScreenState class
