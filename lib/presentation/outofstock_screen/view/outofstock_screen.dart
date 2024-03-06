import 'package:flutter/material.dart';

class OutofStockScreen extends StatelessWidget {
  const OutofStockScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.orange, title: Text("Out of Stock Products")),
      body: Center(child: Text("Product Listing")),
    );
  }
}
