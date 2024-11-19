import 'package:flutter/material.dart';
// part of main
double rate_food = 4.5;
double other_rate_food = 4.0;

int review_count = 100;
int other_review_count = 80;

String FoodPlaceName = '맛집 이름';
String OtherFoodPlaceName = '또 다른 맛집';

List TitleText = [
  "메인 화면",
  "재학생의 꿀팁",

  "가천대 학생들을 위한 꿀팁",
  "첫 학기 계획 세우기",
  "시간표 짜기 꿀팁",

  "학교 근처 맛집",

  FoodPlaceName,
  OtherFoodPlaceName,

  "맛집 리뷰"
];

List SubTitleText = [
  "신입생",
  "신입생들을 위한 조언과 팁",

  "시간표",
  "시간표 짜는 방법 소개",

  "평점 : $rate_food",
  "평점 : $other_rate_food",

  "리뷰 : $review_count개",
  "리뷰 : $other_review_count개",
];

// part of review
String NewReviewerName = '';
String NewReviewerText = '';

List ReviewerName = [
  "맛집 리뷰어1",
  "맛집 리뷰어2",
  "맛집 리뷰어3",
];

List ReviewerText = [
  "매우 만족",
  "다소 만족",
  "보통",
  "불만족",
  "최악의 맛집",
];

List TitleTextEng = [
  "Main Screen",
  "Senior Tip",
  "Tip for Gachon Univ Students",
  "To Plan First Semester",
  "To Plan TimeTable",
  "Delicious Near The Gachon Univ",
  FoodPlaceName,
  OtherFoodPlaceName,
  "Delicious Food Review"
];

List SubTitleTextEng = [
"Freshman",
"Comments and Tips For Freshman",
"TimeTable",
"Introduction of Writing TimeTable",
"rate : $rate_food",
"rate : $other_rate_food",
"review : $review_count",
"review : $other_review_count",
];

class Variable extends StatefulWidget {
  const Variable({super.key});

  @override
  State<Variable> createState() => _VariableState();
}

class _VariableState extends State<Variable> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}