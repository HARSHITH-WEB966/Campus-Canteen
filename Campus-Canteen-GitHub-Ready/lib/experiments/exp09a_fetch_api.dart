// Campus Canteen - Experiment 9(a): Fetch data from a REST API.
// Loads a list of dishes from TheMealDB public API.
//
// pubspec.yaml needs:   http: ^1.2.0
// Needs an internet connection.
// Run:  flutter run -t lib/experiments/exp09a_fetch_api.dart

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const ApiApp());
}

class ApiApp extends StatelessWidget {
  const ApiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'REST API Example',
      debugShowCheckedModeBanner: false,
      home: MealListScreen(),
    );
  }
}

class MealListScreen extends StatefulWidget {
  const MealListScreen({super.key});

  @override
  State<MealListScreen> createState() => _MealListScreenState();
}

class _MealListScreenState extends State<MealListScreen> {
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
      appBar: AppBar(title: const Text("Fetch Data from API")),
      body: error != null
          ? Center(child: Text(error!))
          : meals.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: meals.length,
                  itemBuilder: (context, index) {
                    final meal = meals[index];
                    final String name = meal['strMeal'] as String;
                    return ListTile(
                      leading: CircleAvatar(child: Text(name[0])),
                      title: Text(name),
                      subtitle: Text("${meal['strCategory'] ?? 'Not listed'}"),
                    );
                  },
                ),
    );
  }
}
