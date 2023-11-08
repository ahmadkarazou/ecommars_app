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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 10),
                Container(
                  height: 80,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 220,
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
                                borderSide:
                                    BorderSide(color: Colors.grey[200]!)),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.grey[200])),
                        child: SizedBox(
                            child:
                                SvgPicture.asset('assets/icons/Cart Icon.svg')),
                      ),
                      const SizedBox(width: 10),
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
                const SizedBox(height: 10),
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
                  padding: const EdgeInsets.all(8.0),
                  child: const Row(
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
                          const Padding(
                            padding: EdgeInsets.all(18.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Smartphone',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  '18 Brands',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
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
                          const Padding(
                            padding: EdgeInsets.all(18.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Fashion',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontFamily: 'Muli',
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  '24 Brands',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const Row(
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
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(234, 237, 237,.5),
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
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(234, 237, 237,.5),
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
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(234, 237, 237,.5),
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
