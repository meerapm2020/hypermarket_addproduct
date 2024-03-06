import 'package:flutter/material.dart';

class ProductsListScreen extends StatelessWidget {
  const ProductsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(backgroundColor: Colors.orange, title: Text("Product Lists ")),
      body: Center(child: Text("Product Listing")),
    );
  }
}
