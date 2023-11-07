import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              Container(
                height: 80,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 220,
                      child: TextField(
                        decoration: InputDecoration(
                          counter: Text(''),
                          filled: true,
                          fillColor: Colors.grey[200],
                          contentPadding: EdgeInsets.all(15),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: 'Search product',
                          prefixIcon: Icon(Icons.search),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              borderSide: BorderSide(color: Colors.grey[200]!)),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.grey[200])),
                      child: SizedBox(
                          child:
                              SvgPicture.asset('assets/icons/Cart Icon.svg')),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.grey[200])),
                      child: SizedBox(
                          child: SvgPicture.asset('assets/icons/Bell.svg')),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.all(
                        Radius.circular(24),
                      ),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    height: 110,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(22.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'A Summer Surpise',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Cashback 20%',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.orange[100],
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                        padding: EdgeInsets.all(20),
                        child: SvgPicture.asset('assets/icons/Flash Icon.svg'),
                      ),
                      Text('Flash\n Deal'),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.orange[100],
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                        padding: EdgeInsets.all(20),
                        child: SvgPicture.asset('assets/icons/Bill Icon.svg'),
                      ),
                      Text('Bill'),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.orange[100],
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                        padding: EdgeInsets.all(20),
                        child: SvgPicture.asset('assets/icons/Game Icon.svg'),
                      ),
                      Text('Game'),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.orange[100],
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                        padding: EdgeInsets.all(20),
                        child: SvgPicture.asset('assets/icons/Gift Icon.svg'),
                      ),
                      Text('Daily\nGift'),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.orange[100],
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                        padding: EdgeInsets.all(20),
                        child: SvgPicture.asset(
                          'assets/icons/Discover.svg',
                          width: 22,
                        ),
                      ),
                      Text('More'),
                    ],
                  )
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Special for you',
                      style: TextStyle(fontSize: 25),
                    ),
                    Text(
                      'See More',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.all(20),
              //   child: ListView(
              //     scrollDirection: Axis.horizontal,
              //     children: [
              //       Stack(
              //         children: [
              //           Container(
              //             decoration: BoxDecoration(
              //               color: Colors.deepPurple,
              //               borderRadius: BorderRadius.all(
              //                 Radius.circular(24),
              //               ),
              //             ),
              //             margin: EdgeInsets.symmetric(horizontal: 8),
              //             height: 110,
              //           ),
              //           Padding(
              //             padding: const EdgeInsets.all(22.0),
              //             child: Column(
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 Text(
              //                   'A Summer Surpise',
              //                   style: TextStyle(
              //                     color: Colors.white,
              //                     fontSize: 14,
              //                   ),
              //                 ),
              //                 SizedBox(height: 10),
              //                 Text(
              //                   'Cashback 20%',
              //                   style: TextStyle(
              //                     color: Colors.white,
              //                     fontSize: 30,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //           )
              //         ],
              //       ),
              //     ],
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
