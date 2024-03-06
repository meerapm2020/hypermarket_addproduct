import 'package:flutter/material.dart';

class PopularProductsScreen extends StatelessWidget {
  const PopularProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Popular products"),
      ),
      body: Center(
        child: Text("Popular Products"),
      ),
    );
  }
}
