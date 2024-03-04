import 'package:flutter/material.dart';
import 'package:hypermarket_addproduct/model/productscreen_model.dart';



class ProductController with ChangeNotifier {
  List<ProductModel> _products = [];
  List<ProductModel> get products => _products;

  void addProduct(ProductModel product) {
    _products.add(product);
    notifyListeners();
  }

  void updateProduct(int index, ProductModel product) {
    if (index >= 0 && index < _products.length) {
      _products[index] = product;
      notifyListeners();
    }
  }

  void deleteProduct(int index) {
    if (index >= 0 && index < _products.length) {
      _products.removeAt(index);
      notifyListeners();
    }
  }
}
