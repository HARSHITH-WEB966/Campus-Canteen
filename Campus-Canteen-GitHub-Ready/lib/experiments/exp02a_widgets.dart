// Campus Canteen - Experiment 2(a): Explore Flutter widgets
// (Text, Image, Container).
//
// Run:  flutter run -t lib/experiments/exp02a_widgets.dart

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
      home: Scaffold(
        appBar: AppBar(title: const Text('Campus Canteen')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Hello, Welcome to Campus Canteen!',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Image.network(
                'https://storage.googleapis.com/cms-storage-bucket/0dbfcc7a59cd1cf16282.png',
                width: 100,
                // If the image cannot be loaded, show a food icon instead.
                errorBuilder: (context, error, stackTrace) => const Icon(
                  Icons.restaurant,
                  size: 100,
                  color: Colors.deepOrange,
                ),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(16),
                color: Colors.blue,
                child: const Text(
                  'Today\'s Special: Veg Biryani - Rs.60',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
