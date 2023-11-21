import 'package:ecommars_app/model/item_prudect.dart';
import 'package:ecommars_app/widget/title_text.dart';
import 'package:ecommars_app/widget/favorite_cart.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                TitleText(
                  title: 'My favorite',
                  colorText: Colors.deepOrange,
                  fontSize: 40,
                ),
                SizedBox(
                  height: 700,
                  child: ListView.builder(
                    itemCount: dataItem.data.length,
                    itemBuilder: (_, index) {
                      if (dataItem.data[index]['isFavo'] == true) {
                        return FavoriteCart(
                            onTap: () {
                              setState(() {
                                dataItem.favoriteItem(index);
                                print(dataItem.data[index]['isFavo']);
                              });
                            },
                            price: dataItem.data[index]['prise'].toString(),
                            image: dataItem.data[index]['image'].toString(),
                            name: dataItem.data[index]['name'].toString());
                      }else{
                        return Container();
                      }
                    },
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
