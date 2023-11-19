// import 'dart:convert';
//
// import 'package:ecommars_app/model/product.dart';
// import 'package:ecommars_app/model/products.dart';
// import 'package:http/http.dart' as http;
//
// class NewsAPI {
//   Future<List<Product>> futchProducts() async {
//     try {
//       final http.Response response =
//           await http.get(Uri.parse('https://fakestoreapi.com/products/'));
//       if (response.statusCode == 200) {
//         String data = response.body;
//         var jsonData=jsonDecode(data);
//         Products products=Products.formJson(jsonData);
//       } else {
//         print(response.statusCode);
//       }
//     } catch (ex) {
//       print(ex);
//     }
//   }
// }
