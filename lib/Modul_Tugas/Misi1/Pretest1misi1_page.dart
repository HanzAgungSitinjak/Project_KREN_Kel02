import 'package:flutter/material.dart';
import 'package:mathplay_app/Materi_Modul/Mission_1_Task.dart';
import 'package:mathplay_app/Modul_Tugas/Misi1/Progress_bar.dart'; // Sesuaikan dengan path yang benar
import 'package:mathplay_app/util/constants.dart';
import 'package:mathplay_app/Modul_Tugas/Misi1/Video01_pembelajaran01.dart';
import 'package:mathplay_app/util/global.colors.dart';

class Pretest1misi1Page extends StatefulWidget {
  final void Function(int) completeLevel;
  Pretest1misi1Page({required this.completeLevel});

  @override
  _Pretest1misi1PageState createState() => _Pretest1misi1PageState();
}

class _Pretest1misi1PageState extends State<Pretest1misi1Page> {
  int questionIndex = 0;
  int score = 0;
  bool isPretestAnswer = false;

  List<Map<String, dynamic>> questions = [
    {
      'question': '1 + 1 = ?',
      'options': ['2', '3', '4', '5'],
      'correctIndex': 0,
    },
    {
      'question': '2 + 3 = ?',
      'options': ['4', '5', '6', '7'],
      'correctIndex': 1,
    },
    {
      'question': '4 + 2 = ?',
      'options': ['5', '6', '7', '8'],
      'correctIndex': 1,
    },
    {
      'question': '3 + 3 = ?',
      'options': ['5', '6', '7', '8'],
      'correctIndex': 1,
    },
    {
      'question': '5 + 4 = ?',
      'options': ['8', '9', '10', '11'],
      'correctIndex': 1,
    },
  ];
  int countdown = 10;

  @override
  void initState() {
    super.initState();
    startCountdown();
  }

  void startCountdown() {
    Future.delayed(Duration(seconds: 1), () {
      if (countdown > 0) {
        setState(() {
          countdown--;
        });
        startCountdown();
      } else {
          goToNextQuestion();
        }
    });
  }

  void goToNextQuestion() {
    if (questionIndex < questions.length - 1) {
      setState(() {
        questionIndex++;
        countdown = 10;
      });
      startCountdown();
    } else {
      showResultPage();
    }
  }

  void showResultPage() {
    widget.completeLevel(1);
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => ResultPage(
          completeLevel: widget.completeLevel,
          score: score,
          questions: questions,
        ),
      ),
    );
  }

  void checkAnswer(int selectedOption) {
      if (selectedOption == questions[questionIndex]['correctIndex']) {
        setState(() {
          score++;
        });
      }
      setState(() {
        isPretestAnswer = true;
      });
      goToNextQuestion();
  }

  String getFormattedTime() {
    int minutes = countdown ~/ 60;
    int seconds = countdown % 60;
    return '$minutes:${seconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height:30),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Text('Level 1',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: GlobalColors.mainColor,
                        fontSize: 35
                    )),
                Text('Stage 01',
                    style: TextStyle(
                        color: GlobalColors.mainColor,
                        fontSize: 22
                    )),
              ],
            ),
            SizedBox(height:25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: ProgressBar(countdown: countdown),
            ),
            SizedBox(height:160),
            Text(
              'Question ${questionIndex + 1}\n\n ${questions[questionIndex]['question']}',
              style: TextStyle(
                fontSize: 35.0,
                color: GlobalColors.mainColor,
              ),
            ),
            SizedBox(height: 20.0),
            // Text(
            //   'Time remaining: ${getFormattedTime()}',
            //   style: TextStyle(fontSize: 16.0),
            // ),
            SizedBox(height: 40.0),
            Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
              children: List.generate(
                4,
                    (index) => GestureDetector(
                  onTap: () => checkAnswer(index),
                  child: Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: GlobalColors.secondColor, // You can customize the color
                    ),
                    child: Center(
                      child: Text(
                        questions[questionIndex]['options'][index],
                        style: TextStyle(fontSize: 16.0, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ResultPage extends StatefulWidget {
  final int score;
  final List<Map<String, dynamic>> questions;
  final void Function(int) completeLevel;

  ResultPage({
    required this.completeLevel,
    required this.score,
    required this.questions,
  });
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back, color: GlobalColors.secondColor),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => Mission01(),
                      ),
                    );
                  },
                ),
                SizedBox(width: 62),
                Column(
                  children: [
                    Text(
                      'Level 1',
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: GlobalColors.mainColor),
                      textAlign: TextAlign.justify,
                    ),
                    Text(
                      'Stage 1 Selesai',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: GlobalColors.mainColor),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 40),
            Container(
              height: 320,
              width: 340,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/animation_success.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '            Hebat Kamu\nMenyelesaikan Tantangan!',
                  style: TextStyle(
                      fontSize: 23.0,
                      fontWeight: FontWeight.bold,
                      color: GlobalColors.mainColor),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 23.0),
              ],
            ),
            SizedBox(height: 25.0),
            Text(
              'Score: ${widget.score} / 5',
              style: TextStyle(
                  fontSize: 20.0, color: GlobalColors.mainColor),
            ),
            ElevatedButton(
              onPressed: () {
                widget.completeLevel(1);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => Mission01(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: GlobalColors.secondColor,
              ),
              child: Text(
                'Buka Peta Petualangan',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
