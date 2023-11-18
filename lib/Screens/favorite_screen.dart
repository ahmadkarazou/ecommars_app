import 'package:ecommars_app/widget/title_text.dart';
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
                FavoriteCart(),
                FavoriteCart(),
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

class FavoriteCart extends StatelessWidget {
  const FavoriteCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade100, borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      width: double.infinity,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset('assets/image/ps4_console_white_1.png'),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'wireless Controller',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Muli',
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              Text(
                'for PS4',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Muli',
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
              Text(
                '\$64.99',
                style: TextStyle(
                  color: Colors.orange,
                  fontFamily: 'Muli',
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          CircleAvatar(
            backgroundColor: Colors.red[100],
            child: SvgPicture.asset(
              'assets/icons/Heart Icon_2.svg',
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
