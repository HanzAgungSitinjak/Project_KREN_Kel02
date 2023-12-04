import 'package:flutter/material.dart';
import 'package:mathplay_app/Beranda.dart';
import 'package:mathplay_app/Profile.dart';
import 'package:mathplay_app/util/global.colors.dart';
import 'package:mathplay_app/Profile.dart';
import 'package:mathplay_app/Materi_Modul/Mission_1_Task.dart';
import 'package:mathplay_app/Materi_Modul/Mission_2_Task.dart';
import 'package:mathplay_app/Materi_Modul/Mission_3_Task.dart';
import 'package:mathplay_app/Materi_Modul/Mission_4_Task.dart';


class ModulPage extends StatefulWidget {
  const ModulPage({Key? key}) : super(key: key);

  @override
  State<ModulPage> createState() => _ModulPageState();
}

class _ModulPageState extends State<ModulPage> {
  int _selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.mainColor,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: 400,
              height: 130,
              color: GlobalColors.secondColor,
              padding: EdgeInsets.only(top: 45),
              child: Row(
                children: [
                  SizedBox(width: 20.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Halo Penjelajah',
                        style: TextStyle(
                          fontSize: 27.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Username',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned.fill(
            top: 140.0,
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 20),
              children: [
                InkWell(
                  onTap: () {
                    // Handle button press for Misi 1
                  },
                  child: Container(
                    height: 200,
                    width: 400,
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/bg_mission_1.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => Mission01(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent, // Make button background transparent
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        shadowColor: Colors.blue.withOpacity(0.0),
                        elevation: 5,
                      ),
                      child: Container(
                        height: 250,
                        width: 450,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/bg_mission_1.png'),
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        padding: EdgeInsets.all(24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Misi 1',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Pegunungan Es',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ), //Modul 1
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => Mission02(),
                      ),
                    );
                  },
                  child: Container(
                    height: 200,
                    width: 400,
                    margin: EdgeInsets.only(top: 18),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.20),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                      image: DecorationImage(
                        image: AssetImage('assets/images/bg_mission_2.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => Mission02(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent, // Make button background transparent
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        shadowColor: Colors.grey.withOpacity(0.5),
                        elevation: 5,
                      ),
                      child: Container(
                        height: 200,
                        width: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        padding: EdgeInsets.all(24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Misi 2',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Bukit Lava',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ), //Modul 2
                InkWell(
                  onTap: () {
                  },
                  child: Container(
                    height: 200,
                    width: 400,
                    margin: EdgeInsets.only(top: 18),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/bg_mission_3.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => Mission03(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent, // Make button background transparent
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        shadowColor: Colors.grey.withOpacity(0.5),
                        elevation: 5,
                      ),
                      child: Container(
                        height: 200,
                        width: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        padding: EdgeInsets.all(24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Misi 3',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Samudra Atlantik',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ), //Modul 3
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 200,
                    width: 400,
                    margin: EdgeInsets.only(top: 18, bottom: 100),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/bg_mission_4.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => Mission04(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        shadowColor: Colors.grey.withOpacity(0.5),
                        elevation: 5,
                      ),
                      child: Container(
                        height: 200,
                        width: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        padding: EdgeInsets.all(24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Misi 4',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Benteng Tanpa Celah',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ), //Modul 4
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
                          builder: (BuildContext context) => const ModulPage(),
                        ),
                      );
                    },
                  ),
                  IconButton(
                    icon: Image.asset('assets/images/logo_nav3.png',width: 30, height: 30),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => ProfilePage(),
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
