import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductCart extends StatefulWidget {
  ProductCart({
    required this.onTap,
    required this.imageUrl,
    required this.isFavo,
    required this.name,
    required this.prise,
    required this.onFavo,
    super.key,
  });

  VoidCallback onFavo;
  VoidCallback onTap;
  String name;
  String prise;
  bool isFavo;

  String imageUrl;

  @override
  State<ProductCart> createState() => _ProductCartState();
}

class _ProductCartState extends State<ProductCart> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
            onPressed: widget.onTap,
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromRGBO(234, 237, 237, .5),
                borderRadius: BorderRadius.all(
                  Radius.circular(24),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image(
                  image: AssetImage(widget.imageUrl),
                  width: 40,
                  height: 40,
                ),
              ),
              height: 175,
              width: 175,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.name,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Muli',
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 5),
            SizedBox(
              child: Row(
                children: [
                  Text(
                    '\$${widget.prise}',
                    style: TextStyle(
                      color: Colors.orange,
                      fontFamily: 'Muli',
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(width: 45),
                  TextButton(
                    child: CircleAvatar(
                      backgroundColor: widget.isFavo
                          ? Colors.red[100]
                          : Colors.grey.shade100,
                      child: SvgPicture.asset(
                        'assets/icons/Heart Icon_2.svg',
                        color: widget.isFavo ? Colors.red : Colors.grey,
                      ),
                    ),
                    onPressed: widget.onFavo,
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
