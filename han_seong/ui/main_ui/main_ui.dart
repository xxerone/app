import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project_kksc_gachon_gil_project/ui/Food_ui/food_ration_ui.dart';
import 'package:project_kksc_gachon_gil_project/ui/Food_ui/good_food_ui.dart';
import 'package:project_kksc_gachon_gil_project/ui/Food_ui/other_good_food_ui.dart';
import 'package:project_kksc_gachon_gil_project/ui/Tip_ui/freshman_tip.dart';
import 'package:project_kksc_gachon_gil_project/ui/Tip_ui/timetable_tip.dart';
import 'package:project_kksc_gachon_gil_project/ui/main_ui/main_food.dart';
import 'package:project_kksc_gachon_gil_project/ui/main_ui/foodinformation.dart';
import 'package:project_kksc_gachon_gil_project/ui/variable.dart';
// import 'dart:html';
// import 'dart:math';

void main() {
  runApp(
      ProviderScope(
          child: MyHomePageUI(),
      ),
  );

}

class MyHomePageUI extends StatefulWidget {
  const MyHomePageUI({super.key});

  @override
  State<MyHomePageUI> createState() => _MyHomePageUIState();
}

class _MyHomePageUIState extends State<MyHomePageUI> {

  static const customSwatch = MaterialColor(
    0xFFFF5252,
    <int, Color>{
      50: Color(0xFFFFEBEE),
      100: Color(0xFFFFCDD2),
      200: Color(0xFFEF9A9A),
      300: Color(0xFFE57373),
      400: Color(0xFFEF5350),
      500: Color(0xFFFF5252),
      600: Color(0xFFE53935),
      700: Color(0xFFD32F2F),
      800: Color(0xFFC62828),
      900: Color(0xFFB71C1C),
    },
  );

  Widget _partMain(String TitleText1, String TitleText2, String iconStudent) {
    return Column(
      children: [
        SizedBox(
          width: 20,
          height: 10,
        ),
        // 메인 화면
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Row(
            children: [
              // 메인 화면
              Text(
                TitleText1,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        _imformation(TitleText2, iconStudent),
      ],
    );
  }

  Widget _imformation(String TitleText2, String iconStudent) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                child: Image.asset(
                  iconStudent,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    TitleText2,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _partFreshman(String TitleText3, String SubTitleText1, String SubTitleText2, String iconBell) {
    return InkWell(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  /*
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  */
                  child: Image.asset(
                    iconBell,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                // 첫 학기 계획 세우기
                // 신입생
                // 신입생들을 위한 조언과 팁
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      TitleText3,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 50.0,
                      height: 30.0,
                      child: Center(
                        child: Text(
                            SubTitleText2,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(
                            color: Colors.white,
                            width: 2.0
                        ),
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      child: Text(
                        SubTitleText2,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                    color: Colors.grey[40],
                    thickness: 1.0
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
            width: 20,
          ),
        ],
      ),
      onTap: () {
        print("_partFreshman");
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FreshmanTipUI(),
          ),
        );
      },
    );
  }

  Widget _partTimetable(String TitleText4, String SubTitleText3, String SubTitleText4, String iconMegaphone) {
    return InkWell(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  /*
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  */
                  child: Image.asset(
                    iconMegaphone,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      TitleText4,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 50.0,
                      height: 30.0,
                      child: Center(
                        child: Text(
                           SubTitleText3,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(
                            color: Colors.white,
                            width: 2.0
                        ),
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      SubTitleText4,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10
                      ),
                    ),
                  ],
                ),
              ],
            ),

          ),
          SizedBox(
            height: 20,
            width: 20,
          ),
        ],
      ),
      onTap: () {
        print("_partTimetable");
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TimeTableTipUI(),
          )
        );
      },
    );
  }

  Widget _partFoodplace(String TitleText6, String SubTitleText4, String iconPin) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          child: Image.asset(
              iconPin,
          ),
          /*
          decoration: BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
          */
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              TitleText6,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              SubTitleText4,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10
              ),
            ),
          ],
        ),
        Divider(
            color: Colors.grey[40],
            thickness: 1.0
        ),
      ],
    );
  }

  Widget _partOtherFoodPlace(String TitleText7, String SubTitleText5, String iconPizza) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          /*
          decoration: BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
          */
          child: Image.asset(
            iconPizza,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              TitleText7,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              SubTitleText5,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10
              ),
            ),
          ],
        ),
        Divider(
            color: Colors.grey[40],
            thickness: 1.0
        ),
      ],
    );
  }

  // Declare the ScrollController
  ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    // Dispose the ScrollController when the widget is disposed
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String iconStudent = 'assets/images/icon/bell.png';
    String iconBell = 'assets/images/icon/bell.png';
    String iconMegaphone = 'assets/images/icon/megaphone.png';
    String iconPin = 'assets/images/icon/pin.png';
    String iconPizza = 'assets/images/icon/pizza.png';

    return SingleChildScrollView(
      child: Column(
        children: [
          // 메인 화면 ()
          // 재학생의 꿀팁
          _partMain(TitleText[0], TitleText[1], iconStudent),

          // 가천대 학생들을 위한 꿀팁 (TitleText[2])
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              children: [
                Text(
                  TitleText[2],
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ),
              ],
            ),
          ),

          // 첫 학기 계획 세우기
          // 신입생
          // 신입생들을 위한 조언과 팁
          _partFreshman(TitleText[3], SubTitleText[0], SubTitleText[1], iconBell),
          Divider(
              color: Colors.grey[40],
              thickness: 1.0
          ),

          // 시간표 짜기 꿀팁
          // 시간표
          // 시간표 짜는 방법 소개
          _partTimetable(TitleText[4], SubTitleText[2], SubTitleText[3], iconMegaphone),
          Divider(
              color: Colors.grey[40],
              thickness: 1.0
          ),

          SizedBox(
            height: 70,
            width: 70,
          ),

          // 학교 근처 맛집 (TitleText[5])
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              children: [
                Text(
                  TitleText[5],
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ),
              ],
            ),
          ),

          // 맛집 이름
          // 평점 4.5
          // End
          InkWell(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _partFoodplace(TitleText[6], SubTitleText[4], iconPin),
                  // 리뷰 100개 부분
                  Text(
                      SubTitleText[6],
                      textAlign: TextAlign.end
                  ),
                ],
              ),
            ),
            onTap: () {
              print("_partFoodplace");
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FoodUI(),
                ),
              );
            },
          ),
          Divider(
              color: Colors.grey[40],
              thickness: 1.0
          ),

          // 또 다른 맛집
          // 평점 4.0
          // 리뷰 80개
          InkWell(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _partOtherFoodPlace(TitleText[7], SubTitleText[5], iconPizza),
                  // 리뷰 80개 부분
                  Text(
                    SubTitleText[7],
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
            ),
            onTap: () {
              print("_partOtherFoodPlace");
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => OtherFoodUI(),
                ),
              );
            },
          ),
          Divider(
              color: Colors.grey[40],
              thickness: 1.0
          ),

          // 맛집 리뷰 부분은 가져와도 되고 맡게 되면 제작해봐도 될듯
          // 맛집 리뷰
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              children: [
                Text(
                  '맛집 리뷰',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            width: 20,
            height: 20,
          ),

          Scrollbar(
            controller: _scrollController, // Attach the controller to the scrollbar
            child: SingleChildScrollView(
              controller: _scrollController, // Attach the controller to the scrollable widget
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  InkWell(
                    child: FoodInformation(ReviewerName, ReviewerText),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FoodRationUI(),
                        ),
                      );
                    },
                  ),
                  InkWell(
                    child: FoodInformation(ReviewerName, ReviewerText),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FoodRationUI(),
                        ),
                      );
                    },
                  ),
                  InkWell(
                    child: FoodInformation(ReviewerName, ReviewerText),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FoodRationUI(),
                        ),
                      );
                    },
                  ),
                  ProviderScope(
                    child: MyHomePage2(),
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


