import 'dart:convert';

import 'package:http/http.dart' as http;

class Items {
  final int id;
  final String title;
  final String price;
  final String description;
  final String category;
  final String image;
  bool isFavo;

  Items(
      {required this.id,
      this.isFavo =false,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.image});
}

class Api {
  Future futchProducts() async {
    final http.Response response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));
    if (response.statusCode == 200) {
      List data = jsonDecode(response.body);

      for (var element in data) {
        item.add(
          Items(
            id: element['id'],
            isFavo: false,
            title: element['title'],
            price: element['price'].toString(),
            description: element['description'],
            category: element['category'],
            image: element['image'],
          ),
        );
      }
    }
  }
  void favoriteItem(int index) {
    if (index >= 0 && index < item.length) {
      item[index].isFavo= !item[index].isFavo!;
    }
  }
}
Api api=Api();
List<Items> item = [];
