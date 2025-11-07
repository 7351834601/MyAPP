import 'package:flutter/material.dart';
import 'food_list_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Food Delivery')),
      body: const FoodListScreen(),
    );
  }
}
