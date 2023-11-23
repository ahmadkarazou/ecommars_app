import 'dart:convert';

import 'package:ecommars_app/model/API.dart';
import 'package:ecommars_app/model/product.dart';
import 'package:ecommars_app/model/products.dart';
import 'package:ecommars_app/model/use_API.dart';
import 'package:ecommars_app/model/API.dart';
import 'package:ecommars_app/widget/product_cart.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override


void initState() {
  super.initState();
}

Widget build(BuildContext context) {
  return SafeArea(
      child: Scaffold(
        body: Container(
          child:  ListView.builder(
            itemCount: item.data.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              return ProductCart(
                onTap: () {},
                imageUrl: dataItem.data[index]['image'].toString(),
                isFavo: dataItem.data[index]['isFavo'],
                name: dataItem.data[index]['name'].toString(),
                prise: dataItem.data[index]['prise'].toString(),
                onFavo:(){ setState(() {
                  dataItem.favoriteItem(index);
                  print(dataItem.data[index]['isFavo']);
                });},
              );
            },
          ),,


        ),
      ));
}}
