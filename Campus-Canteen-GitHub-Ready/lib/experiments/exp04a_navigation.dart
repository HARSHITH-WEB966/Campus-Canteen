// Campus Canteen - Experiment 4(a): Navigation between screens using
// Navigator.push and Navigator.pop.
//
// Run:  flutter run -t lib/experiments/exp04a_navigation.dart

import 'package:flutter/material.dart';

void main() {
  runApp(const NavigationApp());
}

class NavigationApp extends StatelessWidget {
  const NavigationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Navigation Example',
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}

// First screen: the canteen menu.
class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("First Screen - Menu")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.restaurant_menu, size: 60, color: Colors.orange),
            const Text('Masala Dosa', style: TextStyle(fontSize: 22)),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text("Go to Second Screen (Item Details)"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SecondScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

// Second screen: details of the selected item.
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Screen - Item Details")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Masala Dosa', style: TextStyle(fontSize: 22)),
            const Text('Price: Rs.40   |   Ready in 10 minutes'),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text("Back to First Screen"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
