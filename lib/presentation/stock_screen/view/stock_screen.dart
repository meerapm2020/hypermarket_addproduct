import 'package:flutter/material.dart';

class Stock {
  final String itemName;
  final int quantity;
  final double price;

  Stock({required this.itemName, required this.quantity, required this.price});
}

class StocksScreen extends StatelessWidget {
  final List<Stock> stocks = [
    Stock(itemName: 'Apples', quantity: 5, price: 100),
    Stock(itemName: 'Bread', quantity: 2, price: 50),
    Stock(itemName: 'Milk', quantity: 20, price: 500),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Stocks"),
      ),
      body: StockList(stocks: stocks),
    );
  }
}

class StockList extends StatelessWidget {
  final List<Stock> stocks;

  StockList({required this.stocks});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: stocks.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(stocks[index].itemName),
          subtitle: Text(
              'Quantity: ${stocks[index].quantity} - Price: \$${stocks[index].price.toStringAsFixed(2)}'),
        );
      },
    );
  }
}
