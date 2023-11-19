import 'package:ecommars_app/Screens/favorite_screen.dart';
import 'package:ecommars_app/Screens/product_screen.dart';
import 'package:ecommars_app/Screens/profile_screen.dart';
import 'package:ecommars_app/widget/product_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  List<Widget> pages = [
    Home(),
    FavoriteScreen(),
    Text('Chat'),
    ProfileScreen(),
  ];
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedindex,
          onTap: (index) {
            setState(() {
              selectedindex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/Shop Icon.svg',
                  color: (selectedindex == 0)
                      ? Colors.deepOrange
                      : Colors.grey,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/Heart Icon.svg',
                  color: (selectedindex == 1)
                      ? Colors.deepOrange
                      : Colors.grey,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/Chat bubble Icon.svg',
                  color: (selectedindex == 2)
                      ? Colors.deepOrange
                      : Colors.grey,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/User.svg',
                  color: (selectedindex == 3)
                      ? Colors.deepOrange
                      : Colors.grey,
                ),
                label: ''),
          ],
        ),
        body: pages.elementAt(selectedindex),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    bool isFavo = false;
    return Padding(
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
                            style: TextStyle(color: Colors.white, fontSize: 12),
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
                SectionsIcon(
                  icon: 'assets/icons/Flash Icon.svg',
                  name: 'Flash\n Deal',
                ),
                SectionsIcon(
                  icon: 'assets/icons/Bill Icon.svg',
                  name: 'Bill',
                ),
                SectionsIcon(
                  icon: 'assets/icons/Game Icon.svg',
                  name: 'Game',
                ),
                SectionsIcon(
                  icon: 'assets/icons/Gift Icon.svg',
                  name: 'Daily\nGift',
                ),
                SectionsIcon(
                  icon: 'assets/icons/Discover.svg',
                  name: 'More',
                ),
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
                              image:
                                  AssetImage('assets/image/Image Banner 2.png'),
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
                            image:
                                AssetImage('assets/image/Image Banner 3.png'),
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
                  ProductCart(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProductScreen()));
                    },
                    imageUrl: 'assets/image/ps4_console_white_1.png',
                    isFavo: isFavo,
                    name: 'wireless Controller\nfor PS4',
                    prise: '64.99',
                  ),
                  ProductCart(
                    onTap: () {},
                    imageUrl: 'assets/image/Image Popular Product 2.png',
                    isFavo: isFavo,
                    name: 'Nike Sport white\nMan Pant',
                    prise: '50.5',
                  ),
                  ProductCart(
                    onTap: () {},
                    imageUrl: 'assets/image/Image Popular Product 3.png',
                    isFavo: isFavo,
                    name: 'Nike Sport white\nMan Pant',
                    prise: '50.5',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SectionsIcon extends StatelessWidget {
  SectionsIcon({
    required this.name,
    required this.icon,
    super.key,
  });

  String icon;
  String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 65,
          width: 65,
          decoration: BoxDecoration(
            color: Colors.orange[100],
            borderRadius: const BorderRadius.all(
              Radius.circular(16),
            ),
          ),
          padding: const EdgeInsets.all(20),
          child: SvgPicture.asset(
            icon,
          ),
        ),
        Text(name),
      ],
    );
  }
}
