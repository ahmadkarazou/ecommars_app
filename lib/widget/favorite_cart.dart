import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FavoriteCart extends StatefulWidget {
  FavoriteCart({
    required this.onTap,
    required this.price,
    required this.image,
    required this.name,

    super.key,
  });
VoidCallback onTap;
  String image;
  String name;
   String price;



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
          Image.network(widget.image, width: 90),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 120,
                child: Text(
                  widget.name,
                  maxLines: 2,
                  overflow:TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Muli',
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
              Text(
                '\$${widget.price}',
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
            backgroundColor:Colors.deepOrange ,
            radius: 25,

            child: TextButton(
              onPressed:widget.onTap,
              child: SvgPicture.asset(
                'assets/icons/data-exploration-data-development-workflow.svg',
                color: Colors.white,
                width: 30,
                height: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
