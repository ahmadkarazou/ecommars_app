import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FavoriteCart extends StatefulWidget {
  FavoriteCart({

    super.key,
  });

  // String? imageUrl;
  // String? namePru;
  //  String? price;
  //


  @override
  State<FavoriteCart> createState() => _FavoriteCartState();
}

class _FavoriteCartState extends State<FavoriteCart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade100, borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      width: double.infinity,
      height: 120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset('assets/image/ps4_console_white_1.png', width: 90),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'wireless Controller\nfor PS4',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Muli',
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
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
          Container(
          
            height: 70,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: TextButton(
              onPressed: () {},
              child: SizedBox(
                width: 40,
                child: SvgPicture.asset(
                  'assets/icons/data-exploration-data-development-workflow.svg',
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
