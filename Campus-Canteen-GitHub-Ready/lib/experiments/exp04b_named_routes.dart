// Campus Canteen - Experiment 4(b): Navigation with named routes.
// Home -> Cart -> Order Placed -> back to Home.
//
// Run:  flutter run -t lib/experiments/exp04b_named_routes.dart

import 'package:flutter/material.dart';

void main() {
  runApp(const NamedRouteApp());
}

class NamedRouteApp extends StatelessWidget {
  const NamedRouteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Named Routes Example',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/second': (context) => const SecondScreen(),
        '/third': (context) => const ThirdScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen - Canteen')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go to Second Screen (Cart)'),
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Screen - Cart')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('2 x Idli, 1 x Tea   Total: Rs.70'),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text('Go to Third Screen (Place Order)'),
              onPressed: () {
                Navigator.pushNamed(context, '/third');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Third Screen - Order Placed')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.check_circle, size: 60, color: Colors.green),
            const Text('Order placed. Token No: 27'),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text('Back to Home Screen'),
              onPressed: () {
                // Remove every screen above Home from the stack.
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
            ),
          ],
        ),
      ),
    );
  }
}
