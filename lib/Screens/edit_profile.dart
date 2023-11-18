import 'package:ecommars_app/Screens/profile_screen.dart';
import 'package:ecommars_app/widget/button_app.dart';
import 'package:ecommars_app/widget/sup_title_text.dart';
import 'package:ecommars_app/widget/text_fiel_app.dart';
import 'package:ecommars_app/widget/title_text.dart';
import 'package:flutter/material.dart';
class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey.shade100,
appBar: AppBar(backgroundColor: Colors.grey.shade100,),
          body: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Stack(
                    children: [
                      CircleAvatar(
                        maxRadius: 60,
                        child: Image.asset(
                          'assets/image/Profile Image.png',
                        ),
                      ),
                      Positioned(
                        bottom: 1,
                        right: .5,
                        child: CircleAvatar(
                            backgroundColor: Colors.deepOrange,
                            maxRadius: 20,
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.camera_alt_outlined,
                                ))),
                      ),
                    ],
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
                        TextFieldApp(hintText: 'Ahmad', label:'First Name', iconTextField:const Icon(Icons.account_circle_outlined)),
                        TextFieldApp(hintText: ' Karzun', label:'Last Name', iconTextField:const Icon(Icons.account_circle_outlined)),
                        TextFieldApp(hintText: '0799250743', label:'Phone Number', iconTextField:const Icon(Icons.phone_android_sharp)),
                        TextFieldApp(hintText: 'AMMAN', label:'Address', iconTextField:const Icon(Icons.location_on_outlined)),

                        SizedBox(
                            height: 60,
                            width: double.infinity,
                            child: ButtonApp(
                              onPressed:() {Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProfileScreen(),
                                  ));},
                              ss: 'Save',
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
