import 'package:flutter/material.dart';

class PopularProductsScreen extends StatelessWidget {
  PopularProductsScreen({super.key});
  final List<Map<String, dynamic>> products = [
    {
      'title': 'Apple',
      'image': 'assets/images/applenew.jpg',
    },
    {
      'title': 'Strawberry',
      'image': 'assets/images/applenew.jpg',
    },
    {
      'title': 'Orange',
      'image': 'assets/images/applenew.jpg',
    },
    {
      'title': 'Grapes',
      'image': 'assets/images/applenew.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Popular products"),
      ),
      body: GridView.builder(
        itemCount: products.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          mainAxisExtent: 125,
        ),
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            margin: EdgeInsets.all(8),
            child: ListTile(
              title: Text(
                products[index]['title'],
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              leading: Image.asset(
                products[index]['image'],
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}
