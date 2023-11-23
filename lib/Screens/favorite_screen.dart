import 'package:ecommars_app/model/API.dart';
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
                  height: 600,
                  child: ListView.builder(
                    itemCount: item.length,
                    itemBuilder: (_, index) {
                      if (item[index].isFavo) {
                        return FavoriteCart(
                            onTap: () {
                              setState(() {
                                item[index].isFavo=false;
                                print(item[index].isFavo);
                              });
                            },
                            price: item[index].price,
                            image: item[index].image,
                            name: item[index].title);
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
