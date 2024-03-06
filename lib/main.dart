import 'package:flutter/material.dart';
import 'package:hypermarket_addproduct/core/login_screen.dart';

//import 'package:hypermarket_addproduct/core/login_screen.dart';
import 'package:hypermarket_addproduct/presentation/controller/product_controller.dart';
//import 'package:hypermarket_addproduct/presentation/userpurchase_screen/view/userpurchase_screen.dart';
//import 'package:hypermarket_addproduct/presentation/product_description_screen/view/product_description_screen.dart';
//import 'package:hypermarket_addproduct/presentation/userpurchase_screen/view/userpurchase_screen.dart';
//import 'package:hypermarket_addproduct/presentation/userslist_screen/view/userslist_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ProductController(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
