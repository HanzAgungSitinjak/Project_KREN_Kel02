import 'package:flutter/material.dart';
import 'package:mathplay_app/util/global.colors.dart';

class Mission02 extends StatefulWidget {
  const Mission02({Key? key}) : super(key: key);

  @override
  State<Mission02> createState() => _Mission02State();
}

class _Mission02State extends State<Mission02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.mainColor,
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg_mission_2.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40), // Mengganti Container menjadi SizedBox
                  Container(
                    height: 70,
                    child: Row(
                      children:[
                        IconButton(
                          icon: Icon(Icons.arrow_back, color: Colors.white),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        SizedBox(width: 110.0),
                        Text ('Misi 2',
                            style: TextStyle(
                              fontSize : 30.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                  Expanded(

                    child: ListView(
                      children:[
                        Container(
                          color: Colors.black.withOpacity(0.3),
                          child: Container(
                            padding: EdgeInsets.all(25),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                                Text ('Tahap 1',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 23.0,
                                      color: Colors.white,
                                    )),
                                SizedBox(height:15),
                                Text ('Memahami Konsep Penjumlahan',
                                    style:TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height:40),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment:MainAxisAlignment.start,
                              children:[
                                SizedBox(width:10),
                                Container(
                                  width: 80,
                                  height: 60,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      primary: GlobalColors.thirdColor,
                                      elevation: 5,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(100.0),
                                      ),
                                    ),
                                    child: Text('1',
                                        style: TextStyle(
                                          fontSize:25.0,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height:50),
                            Row(
                              mainAxisAlignment:MainAxisAlignment.center,
                              children:[
                                Container(
                                  width: 80,
                                  height: 60,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      primary: GlobalColors.thirdColor,
                                      elevation: 5,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(100.0),
                                      ),
                                    ),
                                    child: Text('2',
                                        style: TextStyle(
                                          fontSize:25.0,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height:50),
                            Row(
                              mainAxisAlignment:MainAxisAlignment.end,
                              children:[
                                Container(
                                  width: 80,
                                  height: 60,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      primary: GlobalColors.thirdColor,
                                      elevation: 5,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(100.0),
                                      ),
                                    ),
                                    child: Text('3',
                                        style: TextStyle(
                                          fontSize:25.0,
                                        )),
                                  ),
                                ),
                                SizedBox(width:10),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height:40),
                        Container(
                          color: Colors.black.withOpacity(0.3),
                          child: Container(
                            padding: EdgeInsets.all(25),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                                Text ('Tahap 2',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 23.0,
                                      color: Colors.white,
                                    )),
                                SizedBox(height:15),
                                Text ('Memahami Penjumlahan Lanjutan',
                                    style:TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height:40),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment:MainAxisAlignment.start,
                              children:[
                                SizedBox(width:10),
                                Container(
                                  width: 80,
                                  height: 60,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      primary: GlobalColors.thirdColor,
                                      elevation: 10,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(100.0),
                                      ),
                                    ),
                                    child: Text('1',
                                        style: TextStyle(
                                          fontSize:25.0,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height:50),
                            Row(
                              mainAxisAlignment:MainAxisAlignment.center,
                              children:[
                                Container(
                                  width: 80,
                                  height: 60,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      primary: GlobalColors.thirdColor,
                                      elevation: 5,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(100.0),
                                      ),
                                    ),
                                    child: Text('2',
                                        style: TextStyle(
                                          fontSize:25.0,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height:50),
                            Row(
                              mainAxisAlignment:MainAxisAlignment.end,
                              children:[
                                Container(
                                  width: 80,
                                  height: 60,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      primary: GlobalColors.thirdColor,
                                      elevation: 5,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(100.0),
                                      ),
                                    ),
                                    child: Text('3',
                                        style: TextStyle(
                                          fontSize:25.0,
                                        )),
                                  ),
                                ),
                                SizedBox(width:10),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height:40),
                        Container(
                          color: Colors.black.withOpacity(0.2),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
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
