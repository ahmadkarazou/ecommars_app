import 'dart:convert';

import 'package:http/http.dart' as http;
List<Items> item = [];
class API {


  Future futchProducts() async {
    final http.Response response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));
    if (response.statusCode == 200) {
      List data = jsonDecode(response.body);

      for (var element in data) {
        item.add(Items(
            id: element['id'],
            title: element['title'],
            price: element['price'].toString(),
            description: element['description'],
            category: element['category'],
            image: element['image']));
      }



    }
  }
}

class Items {
  final int id;
  final String title;
  final String price;
  final String description;
  final String category;
  final String image;

  Items(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.image});
}
