// Campus Canteen - Experiment 9(b): Display the fetched data in a
// meaningful way: one card per dish with category, cuisine and tags.
//
// pubspec.yaml needs:   http: ^1.2.0
// Needs an internet connection.
// Run:  flutter run -t lib/experiments/exp09b_display_api_data.dart

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const ApiCardApp());
}

class ApiCardApp extends StatelessWidget {
  const ApiCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'REST API Example',
      debugShowCheckedModeBanner: false,
      home: MealCardScreen(),
    );
  }
}

class MealCardScreen extends StatefulWidget {
  const MealCardScreen({super.key});

  @override
  State<MealCardScreen> createState() => _MealCardScreenState();
}

class _MealCardScreenState extends State<MealCardScreen> {
  List<dynamic> meals = [];
  String? error;

  Future<void> fetchMeals() async {
    try {
      final response = await http.get(Uri.parse(
          'https://www.themealdb.com/api/json/v1/1/search.php?s=rice'));
      if (!mounted) return;
      if (response.statusCode == 200) {
        final data = json.decode(response.body) as Map<String, dynamic>;
        setState(() {
          meals = (data['meals'] as List<dynamic>?) ?? [];
          if (meals.isEmpty) error = 'No dishes found';
        });
      } else {
        setState(() {
          error = 'Failed to load menu (status ${response.statusCode})';
        });
      }
    } catch (e) {
      if (!mounted) return;
      setState(() {
        error = 'Failed to load menu: $e';
      });
    }
  }

  @override
  void initState() {
    super.initState();
    fetchMeals();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Canteen Menu from API")),
      body: error != null
          ? Center(child: Text(error!))
          : meals.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: meals.length,
                  itemBuilder: (context, index) {
                    final meal = meals[index];
                    final String name = meal['strMeal'] as String;
                    return Card(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 6),
                      elevation: 3,
                      child: ListTile(
                        leading: CircleAvatar(child: Text(name[0])),
                        title: Text(
                          name,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Category: ${meal['strCategory'] ?? 'Not listed'}"),
                            Text("Cuisine: ${meal['strArea'] ?? 'Not listed'}"),
                            Text("Tags: ${meal['strTags'] ?? 'None'}"),
                          ],
                        ),
                        isThreeLine: true,
                      ),
                    );
                  },
                ),
    );
  }
}
