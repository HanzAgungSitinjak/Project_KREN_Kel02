import 'package:flutter/material.dart';
import 'package:mathplay_app/Beranda.dart';
import 'package:mathplay_app/Modul.dart';
import 'package:mathplay_app/Profile_Func/Edit_Profile.dart';
import 'package:mathplay_app/util/global.colors.dart';
import 'package:hexcolor/hexcolor.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: 400,
              height: 240,
              color: Colors.white,
              padding: EdgeInsets.only(top: 5),
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 60.0,
                      backgroundImage: AssetImage('assets/images/profil.png'),
                    ),
                    SizedBox(width: 20.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'USERNAME',
                          style: TextStyle(
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Bergabung pada tgl',
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 270,
            left: 20,
            right: 20,
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => EditProfile(),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    margin: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color: GlobalColors.mainColor,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                        SizedBox(width: 8.0),
                        Text(
                          'Edit Profil',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Handle tap for Keluar
                  },
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    margin: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color: GlobalColors.mainColor,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.logout,
                          color: Colors.white,
                        ),
                        SizedBox(width: 8.0),
                        Text(
                          'Keluar',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              width: 400,
              height: 70,
              decoration: BoxDecoration(
                color: GlobalColors.secondColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  IconButton(
                    icon: Image.asset('assets/images/logo_nav.png',width: 30, height: 30),
                    tooltip: 'Beranda',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => const Beranda(),
                        ),
                      );
                    },
                  ),
                  IconButton(
                    icon: Image.asset('assets/images/logo_nav2.png',width: 30, height: 30),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => ModulPage(),
                        ),
                      );
                    },
                  ),
                  IconButton(
                    icon: Image.asset('assets/images/logo_nav3.png',width: 30, height: 30),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
