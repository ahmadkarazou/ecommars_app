import 'package:ecommars_app/Screens/edit_profile.dart';
import 'package:ecommars_app/Screens/sign_in_screen.dart';
import 'package:ecommars_app/widget/button_app.dart';
import 'package:ecommars_app/widget/sup_title_text.dart';
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
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            CircleAvatar(
              maxRadius: 80,
              child: Image.asset(
                'assets/image/Profile Image.png',
              ),
            ),
            SizedBox(height: 10),
            TitleText(
                title: 'Ahmad karzun', colorText: Colors.black, fontSize: 30),
            SizedBox(height: 10),
            SupTitleText(title: 'ahmad@gamil.com'),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  RowContent(
                    icons: 'assets/icons/User Icon.svg',
                    title: 'Edit Profile',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditProfile(),
                          ));
                    },
                  ),
                  SizedBox(height: 10),
                  RowContent(
                    icons: 'assets/icons/icon-order-1.svg',
                    title: 'My Orders',
                    onTap: () {},
                  ),
                  SizedBox(height: 10),
                  RowContent(
                    icons: 'assets/icons/Star Icon.svg',
                    title: 'My Rating',
                    onTap: () {},
                  ),
                  SizedBox(height: 10),
                  RowContent(
                    icons: 'assets/icons/Question mark.svg',
                    title: 'Help Center',
                    onTap: () {},
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                      height: 60,
                      width: double.infinity,
                      child: ButtonApp(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignInScreen(),
                              ));
                        },
                        textButton: 'Log uot',
                      ))
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
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextButton(
        onPressed: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgPicture.asset(
              icons,
              color: Colors.deepOrange,
              width: 30,
            ),
            TitleText(title: title, colorText: Colors.black, fontSize: 25),
          ],
        ),
      ),
    );
  }
}
