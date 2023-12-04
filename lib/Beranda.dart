import 'package:flutter/material.dart';
import 'package:mathplay_app/Profile.dart';
import 'package:mathplay_app/Modul.dart';
import 'package:mathplay_app/util/global.colors.dart';
import 'package:hexcolor/hexcolor.dart';

class Beranda extends StatefulWidget {
  const Beranda({Key? key}) : super(key: key);

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.mainColor,
      body: Stack(
        children: [
          // Background Image
          Positioned(
            bottom: -10,
            left: -30,
            child: Container(
              width: 580,
              height: 700,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // Container dengan Username
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 35.0,
                    backgroundImage: AssetImage('assets/images/profil.png'),
                  ),
                  SizedBox(width: 20.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Selamat Datang',
                        style: TextStyle(
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Username',
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ), // Container untuk username
          Positioned(
            bottom: 15,
            right: 10,
            child: Container(
              height: 190,
              width: 280,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hayy',
                    style: TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                      color: GlobalColors.mainColor,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Selamat Datang pahlawan!!!',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: GlobalColors.mainColor,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => ModulPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: GlobalColors.secondColor,
                    ),
                    child: Text('Lanjutkan Misi',
                        style: TextStyle(
                          color: Colors.white,
                        )),
                  ), // Button
                ],
              ),
            ),
          ), // Untuk penjelasan selanjutnya
          // Container untuk menu navigasi
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(left: 13),
              width: 70,
              height: 300,
              decoration: BoxDecoration(
                color: GlobalColors.secondColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  topLeft: Radius.circular(50),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  IconButton(
                    icon: Image.asset('assets/images/logo_nav.png',width: 30, height: 30),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Image.asset('assets/images/logo_nav2.png',width: 60, height: 60),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => const ModulPage(),
                        ),
                      );
                    },
                  ),
                  IconButton(
                    icon: Image.asset('assets/images/logo_nav3.png',width: 50, height: 50),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => const ProfilePage(),
                        ),
                      );
                    },
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
