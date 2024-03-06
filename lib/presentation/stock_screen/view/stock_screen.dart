import 'package:flutter/material.dart';

class StocksScreen extends StatelessWidget {
  const StocksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("Stocks"),
        ),
        body: Center(child: Text("Stocks Screen")));
  }
}
