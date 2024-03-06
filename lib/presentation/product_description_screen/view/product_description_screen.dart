import 'package:flutter/material.dart';

class ProductDescriptionScreen extends StatelessWidget {
  ProductDescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          "Product Details",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            Text("Apple",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 15,
            ),
            Image.asset("assets/images/applenew.jpg"),
            SizedBox(
              height: 15,
            ),
            Text("Category: Fruit",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 15,
            ),
            Text(
              " apple, Fruit of the genus Malus, in the rose family, the most widely cultivated tree fruit. Malus species are native to the temperate zones of both hemispheres. They require a considerable period of dormancy, well-drained soil, careful pruning in early years of growth, and a rigorous pest-management program for mature trees. The apple is one of the pome (fleshy) fruits. Apples at harvest vary widely in size, shape, colour, and acidity, but most are fairly round and some shade of red or yellow. ",
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 15,
            ),
            Text("Price:Rs 250/-",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 15,
            ),
            Text("Quantity:50kg",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
