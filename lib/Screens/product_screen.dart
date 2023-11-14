import 'package:ecommars_app/widget/button_app.dart';
import 'package:ecommars_app/widget/container_color.dart';
import 'package:ecommars_app/widget/sup_title_text.dart';
import 'package:ecommars_app/widget/title_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: SvgPicture.asset('assets/icons/Back ICon.svg'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      SupTitleText(title: '4.8'),
                      SizedBox(width: 10),
                      SvgPicture.asset('assets/icons/Star Icon.svg'),
                    ],
                  ),
                )
              ],
            ),
            Image.asset(
              'assets/image/ps4_console_white_1.png',
              width: 220,
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.deepOrange)),
                  child: Image.asset('assets/image/ps4_console_white_1.png'),
                ),
                SizedBox(width: 15),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset('assets/image/ps4_console_white_2.png'),
                ),
                SizedBox(width: 15),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset('assets/image/ps4_console_white_3.png'),
                ),
                SizedBox(width: 15),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset('assets/image/ps4_console_white_4.png'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TitleText(
                          title: 'Wireless Controller for PS4',
                          colorText: Colors.black,
                          fontSize: 20,
                        ),
                        TitleText(
                          title: 'TM ',
                          colorText: Colors.black,
                          fontSize: 10,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.red.shade100,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0)),
                        ),
                        width: 70,
                        height: 50,
                        child: TextButton(
                          onPressed: () {},
                          child: SvgPicture.asset(
                            'assets/icons/Heart Icon_2.svg',
                            color: Colors.deepOrange,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Wireless Controller for SP4 gives you what\nyouwant in your gaming from over preision\ncontrol your games to sharing ... ',
                          style: const TextStyle(
                              fontSize: 14,
                              fontFamily: 'Muli',
                              fontWeight: FontWeight.w100,
                              color: Colors.grey),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'See More Detail',
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Muli',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.deepOrange),
                                ),
                                SizedBox(width: 5),
                                SvgPicture.asset(
                                  'assets/icons/arrow_right.svg',
                                  color: Colors.deepOrange,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10, top: 10, right: 10),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            ContainerColor(
                              color: Colors.red,
                              colorsBorder: Colors.grey.shade100,
                            ),
                            ContainerColor(
                              color: Colors.indigo,
                              colorsBorder: Colors.grey.shade100,
                            ),
                            ContainerColor(
                              color: Colors.grey,
                              colorsBorder: Colors.grey.shade100,
                            ),
                            ContainerColor(
                              color: Colors.white,
                              colorsBorder: Colors.deepOrange,
                            ),
                            SizedBox(width: 60),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50)),
                              width: 50,
                              height: 50,
                              child: TextButton(
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.deepOrange,
                                  )),
                            ),
                            SizedBox(width: 10),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50)),
                              width: 50,
                              height: 50,
                              child: TextButton(
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.deepOrange,
                                  )),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: double.infinity,

                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30))),
                            child: Column(
                              children: [
                                SizedBox(height: 15),
                                SizedBox(
                                  width: 250,
                                  height: 50,
                                  child: ButtonApp(
                                    onPressed: () {},
                                    ss: 'Add To Cart',
                                  ),
                                ),
                                SizedBox(height: 5),
                              ],
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
