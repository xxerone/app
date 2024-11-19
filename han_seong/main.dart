import 'dart:html';

import 'package:flutter/material.dart';
import 'package:project_kksc_gachon_gil_project/ui/main_ui/main_ui.dart';
import 'package:project_kksc_gachon_gil_project/ui/my_page/mypage.dart';
import 'package:project_kksc_gachon_gil_project/ui/notice_board/board_page.dart';
import 'package:project_kksc_gachon_gil_project/ui/variable.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //오른쪽위 debugBanner 없애기
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  final screens = [
    //이게 하나하나의 화면이되고, Text등을 사용하거나, dart파일에 있는 class를 넣는다.
    MyHomePageUI(), // 1번째 꺼 - 근데 이거 쇼부 보긴 해야함
    BoardMain(), // 1번째 꺼
    // 2번째 꺼
    // 3번째 꺼
    MyPage(), // 4번재 꺼
  ];

  String Id = '김한성';
  String Email = 'gkstjd6097@gmail.com';
  String Check = '확인';

  bool isEnglish = false;
  // true : 영어
  // false : 한글

  @override
  Widget build(BuildContext context) {
    String VersionInnerText = '1.0.0';
    String Version = 'Version: $VersionInnerText';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0, // 뭐하는거지
        title: const Text(
          '가천대학교',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/kksc_logo.jpg',
                  ),
                ),
                /*
                otherAccountsPictures: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/images/kksc_logo.jpg',
                    ),
                  ),
                ],
                */
                accountName: Text(
                    Id
                ),
                accountEmail: Text(
                    Email,
                ),
                /*
                decoration: BoxDecoration(
                  color: Colors.red[200],
                  borderRadius:
                ),
                */

            ),
            // 언어
            ListTile(
              leading: Icon(
                Icons.language,
                color: Colors.grey[850],
              ),
              title: Text(
                '언어 설정',
              ),
              onTap: () {
                print("Language is clicked");
                showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: Text(
                        "Version",
                      ),
                      content: Text(
                        "언어를 선택하시오",
                      ),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            isEnglish = true;
                            print("English button clicked");
                            Navigator.of(context).pop();
                          },
                          child: Text('Korean'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            isEnglish = false;
                            print("English button clicked");
                            Navigator.of(context).pop();
                          },
                          child: Text('English'),
                        ),
                      ],
                    )
                );
              },
              // trailing: Icon(Icons.add),
            ),

            // 버전
            ListTile(
              leading: Icon(
                Icons.stay_current_portrait,
                color: Colors.grey[850],
              ),
              title: Text(
                'Version',
              ),
              onTap: () {
                print("Version is clicked");
                showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: Text(
                        "Version",
                      ),
                      content: Text(
                        Version,
                      ),
                      actions: [
                        ElevatedButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: Text(
                              Check,
                            ),
                        )
                      ],
                    )
                );
              },
              // trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        iconSize: 32,
        selectedItemColor: Color(0xFF674AEF),
        selectedFontSize: 18,
        unselectedItemColor: Colors.grey,

        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          // 홈
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
          ),
          // (BoardMain)
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment),
              label: 'BoardMain'
          ),
          // 선배들의 꿀팁 (Senior)
          BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Senior'
          ),
          // 식당 (Restaurant)
          BottomNavigationBarItem(
              icon: Icon(Icons.restaurant),
              label: 'Restaurant'
          ),
          // (MyPage)
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'MyPage'
          ),
        ],
      ),
    );
  }
}
