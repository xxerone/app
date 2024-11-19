// 로그인 부분
/*
// github : https://github.com/bimalkaf/Flutter_SinglePages/tree/master/Login_Simple_3
// youtube : https://www.youtube.com/watch?v=cNGCBhFKVUQ

import 'package:flutter/material.dart';
import 'package:project_kksc_flutter_login_ui_project/ui/login_ui/login_page.dart';
// import 'package:project_kksc_flutter_every_time_project/login_ui/login_page.dart';
// import 'package:project_kksc_flutter_every_time_project/ui/login_ui/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        /*
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
        */

        primarySwatch: Colors.deepPurple,
      ),
      home: LoginPage(),
      debugShowCheckedModeBanner: true,
    );
  }
}
*/

// 테스트 완료 - 링크 어디갔지?
// 테스트 완료한 부분
// １。 시간표 틀 구현 완료
// -> 현재 ９ ～ １７시에 대하여 １７시부턴 시간이 유동적으로 늘어나지는 못함 （협의 하에 업데이트로 구현 예정¿）
// ２。 시간표 관련하여 현재 ｒｏｗ와 ｃｏｌ로 분류해놓음
// -> 하나씩 개별로는 접근 불가 -> 반복문과 함수를 통한 접근 시 가능할 것으로 소견됨。
// ３。 추가 및 불러오기 버튼 구현 완료
// -> 기능 구현 예정 （아래 ６번 참조）

// 사후 파트 담당 시 구현 예정
// １。 시간표 과목 텍스트 및 담당 교수 표시 구현 예정
// ２。 시간표 과목 텍스트 및 （시간） 수정 구현 예정
// ３。 시간표 미디어 쿼리 구현 예정
// ４。 위젯 크기 초과 관련 오류 수정 예정
// -> 관련하여 어느 정도 구현을 완료한 줄 알았으나
// -> 컴퓨터 최대 화면과 스마트폰 홈 화면 모두에서 미디어 쿼리가 적용되지 않는 이슈가 있음
// ５。 삭제 구현 필요할 것으로 보임
// ６。 추가 및 불러오기 버튼 구현
