import 'package:ecommars_app/model/product.dart';

class Products {
  final List<dynamic> products;

  Products({required this.products});

  factory Products.formJson(Map<String, dynamic> jsonData) {
    return Products(
      products: jsonData[1],

    );
  }
}

