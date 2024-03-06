import 'package:flutter/material.dart';

import 'package:hypermarket_addproduct/presentation/home_screen/view/home_screen.dart';
import 'package:hypermarket_addproduct/presentation/product_list_screen/view/product_list_screen.dart';
import 'package:hypermarket_addproduct/presentation/userpurchase_screen/view/userpurchase_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int selectedIndex = 0;
  List<Widget> myWidgetList = [
    HomeScreen(),
    UserPurchaseScreen(),
    ProductsListScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: myWidgetList[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.orange,
          currentIndex: selectedIndex,
          selectedIconTheme: IconThemeData(color: Colors.black),
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "Cart"),
            BottomNavigationBarItem(
                icon: Icon(Icons.description), label: "Schemes")
          ],
        ),
      ),
    );
  }
}
