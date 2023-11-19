import 'package:ecommars_app/model/product.dart';

class Products {
  final List<dynamic> product;

  Products({required this.product});

  factory Products.formJson(Map<String, dynamic> jsonData) {
    return Products(
      product: jsonData['product'],
    );
  }
}
