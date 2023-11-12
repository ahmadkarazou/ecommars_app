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
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/Shop Icon.svg'),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/Heart Icon.svg'),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/Chat bubble Icon.svg'),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/User.svg',color: Colors.grey,), label: ''),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                          counter: const Text(''),
                          filled: true,
                          fillColor: Colors.grey[200],
                          contentPadding: const EdgeInsets.all(15),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: 'Search product',
                          prefixIcon: const Icon(Icons.search),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(20),
                              ),
                              borderSide: BorderSide(color: Colors.grey[200]!)),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.all(12),
                      margin: EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color.fromRGBO(234, 237, 237, .5),
                      ),
                      width: 50,
                      height: 50,
                      child: SvgPicture.asset('assets/icons/Cart Icon.svg'),
                    ),
                    const SizedBox(width: 10),
                    Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(12),
                          margin: EdgeInsets.only(bottom: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color.fromRGBO(234, 237, 237, .5),
                          ),
                          width: 50,
                          height: 50,
                          child: SvgPicture.asset('assets/icons/Bell.svg'),
                        ),
                        Positioned(
                            left: 33,
                            child: Container(
                              width: 17,
                              height: 17,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.red,
                              ),
                              child: Text(
                                '3',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ))
                      ],
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.all(
                          Radius.circular(24),
                        ),
                      ),
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      height: 110,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(22.0),
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
                const SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.orange[100],
                            borderRadius: const BorderRadius.all(
                              Radius.circular(16),
                            ),
                          ),
                          padding: const EdgeInsets.all(20),
                          child:
                              SvgPicture.asset('assets/icons/Flash Icon.svg'),
                        ),
                        const Text('Flash\n Deal'),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.orange[100],
                            borderRadius: const BorderRadius.all(
                              Radius.circular(16),
                            ),
                          ),
                          padding: const EdgeInsets.all(20),
                          child: SvgPicture.asset('assets/icons/Bill Icon.svg'),
                        ),
                        const Text('Bill'),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.orange[100],
                            borderRadius: const BorderRadius.all(
                              Radius.circular(16),
                            ),
                          ),
                          padding: const EdgeInsets.all(20),
                          child: SvgPicture.asset('assets/icons/Game Icon.svg'),
                        ),
                        const Text('Game'),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.orange[100],
                            borderRadius: const BorderRadius.all(
                              Radius.circular(16),
                            ),
                          ),
                          padding: const EdgeInsets.all(20),
                          child: SvgPicture.asset('assets/icons/Gift Icon.svg'),
                        ),
                        const Text('Daily\nGift'),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.orange[100],
                            borderRadius: const BorderRadius.all(
                              Radius.circular(16),
                            ),
                          ),
                          padding: const EdgeInsets.all(20),
                          child: SvgPicture.asset(
                            'assets/icons/Discover.svg',
                            width: 22,
                          ),
                        ),
                        const Text('More'),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Special for you',
                        style: TextStyle(fontSize: 25),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'See More',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/image/Image Banner 2.png'),
                                  opacity: 50,
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.all(
                                Radius.circular(24),
                              ),
                            ),
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                            height: 130,
                            width: 300,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Smartphone',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: Text(
                                  '18 Brands',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/image/Image Banner 3.png'),
                                opacity: 50,
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(24),
                              ),
                            ),
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                            height: 130,
                            width: 300,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Fashion',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontFamily: 'Muli',
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25.0),
                                child: Text(
                                  '24 Brands',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Popular Products',
                        style: TextStyle(fontSize: 25),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'See More',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
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
                                    image: AssetImage(
                                      'assets/image/ps4_console_white_1.png',
                                    ),
                                    width: 40,
                                    height: 40,
                                  ),
                                ),
                                height: 175,
                                width: 175,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'wireless Controller',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Muli',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'for PS4',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Muli',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(height: 5),
                                SizedBox(
                                  child: Row(
                                    children: [
                                      Text(
                                        '\$64.99',
                                        style: TextStyle(
                                          color: Colors.orange,
                                          fontFamily: 'Muli',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                      SizedBox(width: 50),
                                      CircleAvatar(
                                        backgroundColor: Colors.red[100],
                                        child: SvgPicture.asset(
                                          'assets/icons/Heart Icon_2.svg',
                                          color: Colors.red,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {  },
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
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
                                    image: AssetImage(
                                      'assets/image/Image Popular Product 2.png',
                                    ),
                                    width: 40,
                                    height: 40,
                                  ),
                                ),
                                height: 175,
                                width: 175,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Nike Sport white',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Muli',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Man Pant',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Muli',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(height: 5),
                                SizedBox(
                                  child: Row(
                                    children: [
                                      Text(
                                        '\$50.5',
                                        style: TextStyle(
                                          color: Colors.orange,
                                          fontFamily: 'Muli',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                      SizedBox(width: 50),
                                      CircleAvatar(
                                        backgroundColor: Colors.grey[100],
                                        child: SvgPicture.asset(
                                          'assets/icons/Heart Icon_2.svg',
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {  },
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
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
                                    image: AssetImage(
                                      'assets/image/Image Popular Product 3.png',
                                    ),
                                    width: 40,
                                    height: 40,
                                  ),
                                ),
                                height: 175,
                                width: 175,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Glove',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Muli',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Polyg',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Muli',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(height: 5),
                                SizedBox(
                                  child: Row(
                                    children: [
                                      Text(
                                        '\$36.5',
                                        style: TextStyle(
                                          color: Colors.orange,
                                          fontFamily: 'Muli',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                      SizedBox(width: 50),
                                      CircleAvatar(
                                        backgroundColor: Colors.grey[100],
                                        child: SvgPicture.asset(
                                          'assets/icons/Heart Icon_2.svg',
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
