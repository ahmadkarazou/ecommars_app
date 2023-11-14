import 'package:ecommars_app/widget/title_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Stack(
              children: [
                CircleAvatar(
                  maxRadius: 80,
                  child: Image.asset(
                    'assets/image/Profile Image.png',
                  ),
                ),
                Positioned(
                  bottom: 1,
                  right: .5,
                  child: CircleAvatar(
                      backgroundColor: Colors.deepOrange,
                      maxRadius: 25,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.camera_alt_outlined,
                          ))),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(30)),
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  RowContent(
                    icons: 'assets/icons/User Icon.svg',
                    title: 'Edit Profile',
                    onTap: () {},
                  ),
                  RowContent(
                    icons: 'assets/icons/Heart Icon_2.svg',
                    title: 'My Fevarit',
                    onTap: () {},
                  ),
                  RowContent(
                    icons: 'assets/icons/User Icon.svg',
                    title: 'Edit Profile',
                    onTap: () {},
                  ),
                  RowContent(
                    icons: 'assets/icons/User Icon.svg',
                    title: 'Edit Profile',
                    onTap: () {},
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}

class RowContent extends StatelessWidget {
  RowContent({
    required this.icons,
    required this.onTap,
    required this.title,
    super.key,
  });

  String icons;
  String title;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/icons/User Icon.svg',
            color: Colors.black,
          ),
          SizedBox(width: 20),
          TitleText(
              title: 'Edit Profile', colorText: Colors.black, fontSize: 24),
          SizedBox(width: 120),
          Icon(
            Icons.arrow_forward,
            size: 40,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
