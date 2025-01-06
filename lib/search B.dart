import 'package:flutter/material.dart';
import 'package:flutter_project/mainPage.dart';
import 'package:flutter_project/magorSubList B.dart';
import 'major.dart'; // 새로운 파일 임포트


class SearchPageB extends StatefulWidget {
  @override
  _SearchPageB createState() => _SearchPageB();
}

class _SearchPageB extends State<SearchPageB> {
  final List<String> mainList = [
    '전공',
    '필수 기초',
    '선택 기초',
    '핵심 교양',
    '일반 교양',
    '특별 교과 과정'
  ];

  final Map<String, List<String>> subList = {
    '전공': [
      '소프트웨어학부',
      '간호학과',
      '광고홍보학과',
      '경영학과',
      '경제학과',
      '기후변화융합전공',
      '디지털미디어 전공',
      '데이터미디어콘텐츠 전공'
    ],
    '필수 기초': ['과목1', '과목2', '과목3'],
    '선택 기초': ['과목A', '과목B', '과목C'],
    '핵심 교양': ['과목X', '과목Y', '과목Z'],
    '일반 교양': ['과목가', '과목나', '과목다'],
    '특별 교과 과정': ['과목ㄱ', '과목ㄴ', '과목ㄷ']
  };

  List<String> filteredList = [];

  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredList = mainList;
  }

  void filterList(String keyword) {
    setState(() {
      if (keyword.isNotEmpty) {
        filteredList = mainList
            .where((item) => item.toLowerCase().contains(keyword.toLowerCase()))
            .toList();
      } else {
        filteredList = mainList;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('assets/images/back-button.png'),
          onPressed: () {
            Navigator.pushAndRemoveUntil(context,
                MaterialPageRoute(builder: (context) => MainPage()), (route) => false);
          },
        ),
        title: Text(
          '수강신청',
          style: TextStyle(
              color: Color(0xff0066B3),
              fontSize: 22,
              fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Image.asset('assets/images/calendar_check_01.png'),
            onPressed: () {
              // 달력 모달 또는 기능 추가
            },
          ),
        ],
        backgroundColor: Color(0xFFE2F3FF),
      ),
      body: Column(
        children: [
          Container(
            color: Color.fromRGBO(249, 249, 249, 1),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: '검색어 입력',
                  suffixIcon: Image.asset('assets/images/search_sm.png'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0)
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredList.length,
              itemBuilder: (context, index) {
                final mainItem = filteredList[index];
                final subItems = subList[mainItem] ?? [];
                return Column(
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        mainItem,
                        style: TextStyle(fontSize: 20),
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => MajorSubB()),
                        );
                      },
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 0.5,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}