import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:get/get.dart';
import 'Package:mathplay_app/util/constants.dart';

class ProgressBar extends StatelessWidget {
  final int countdown;

  const ProgressBar({
    Key? key,
    required this.countdown,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF3F4768), width: 3),
        borderRadius: BorderRadius.circular(50),
      ),
      child: GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (controller) {
          return Stack(
            children: [
              LayoutBuilder(
                builder: (context, constraints) => Container(
                  width: constraints.maxWidth * (countdown / 10),
                  decoration: BoxDecoration(
                    gradient: kPrimaryGradient,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
              Positioned.fill(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: kDefaultPadding / 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("$countdown sec"),
                      WebsafeSvg.asset("assets/icons/clock.svg"),
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}


class QuestionController extends GetxController with GetSingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  Animation<double> get animation => _animation;

  late PageController _pageController;
  PageController get pageController => this._pageController;

  bool _isAnswered = false;
  bool get isAnswered => this._isAnswered;

  int _correctAns = 0;
  int get correctAns => this._correctAns;

  int _selectedAns = 0;
  int get selectedAns => this._selectedAns;

  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => this._questionNumber;

  int _numOfCorrectAns = 0;
  int get numOfCorrectAns => this._numOfCorrectAns;

  @override
  void onInit() {
    _animationController = AnimationController(
      duration: Duration(seconds: 60),
      vsync: this,
    );

    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController)
      ..addListener(() {
        update();
      });

    // _animationController.forward().whenComplete(nextQuestion);

    _pageController = PageController();

    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    _animationController.dispose();
    _pageController.dispose();
  }
}
