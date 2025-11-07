import 'package:flutter/material.dart';
import '../services/api_service.dart';

class FoodListScreen extends StatefulWidget {
  const FoodListScreen({super.key});

  @override
  State<FoodListScreen> createState() => _FoodListScreenState();
}

class _FoodListScreenState extends State<FoodListScreen> {
  List foods = [];

  @override
  void initState() {
    super.initState();
    loadFoods();
  }

  void loadFoods() async {
    final data = await ApiService.fetchFoods();
    setState(() {
      foods = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: foods.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(foods[index]['name'] ?? 'Food Item'),
          subtitle: Text("₹" + (foods[index]['price']?.toString() ?? '')),
        );
      },
    );
  }
}
