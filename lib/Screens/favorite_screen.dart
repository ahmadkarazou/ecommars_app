import 'package:ecommars_app/widget/title_text.dart';
import 'package:ecommars_app/widget/favorite_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
                FavoriteCart(),
                FavoriteCart(),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
