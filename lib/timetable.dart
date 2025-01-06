import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'lectureEvaluation.dart';
import 'mainPage.dart';

class DottedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.grey.withOpacity(0.5)
      ..strokeWidth = 1.0
      ..style = PaintingStyle.stroke;

    const dashWidth = 4;
    const dashSpace = 4;

    double startY = 0.0;
    while (startY < size.height) {
      canvas.drawLine(
        Offset(0, startY),
        Offset(0, startY + dashWidth),
        paint,
      );
      startY += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class Subject_01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // 구역 1
        SizedBox(
          height: 159,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xffeff8ff),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'HCI',
                          style: TextStyle(
                            fontSize: 28,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          '김선정',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '화A 목A',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(
                width: 1.0,
                child: CustomPaint(
                  painter: DottedLinePainter(),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.grey.withOpacity(0.5),
                              width: 1.0,
                            ),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            '소프트웨어학부',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.grey.withOpacity(0.5),
                              width: 1.0,
                            ),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            '전공선택',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.grey.withOpacity(0.5),
                              width: 1.0,
                            ),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            '3학점',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Expanded(
                      child: Center(
                        child: Text(
                          '오프라인 수업',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // 구역 3
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  // 다른 페이지로 이동하는 코드
                  Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => OtherPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff00b6ad), // 버튼의 배경색
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                    side: const BorderSide(
                      color: Color(0xffc4d0ee),
                      width: 1,
                    ),
                  ),
                  elevation: 4,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 45,
                      height: 45,
                      child: Image.asset('assets/images/book-open-01.png'),
                    ),
                    Container(
                      width: 135,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: const Color(0xff00b6ad),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        '강의 계획서',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          width: 303,
                          height: 196,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: const Color(0xff8c8c8c),
                              width: 1,
                            ),
                            color: Colors.white,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                  width: 368,
                                  height: 100,
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: const TextSpan(
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: "Inter",
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black,
                                      ),
                                      children: [
                                        TextSpan(text: "[ "),
                                        TextSpan(
                                          text: "HCI",
                                          style: TextStyle(
                                            color: Colors.blue,
                                          ),
                                        ),
                                        TextSpan(text: " ] 를(을)\n수강 취소하시겠습니까?"),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 20,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 115,
                                      height: 39,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: const Color(0xff8c8c8c),
                                          width: 1,
                                        ),
                                        color: const Color(0xffb4b4b4),
                                      ),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).pop(); // 현재 팝업 창 닫기
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.transparent,
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                        ),
                                        child: const Text(
                                          '취소',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Container(
                                      width: 115,
                                      height: 39,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: const Color(0xff8c8c8c),
                                          width: 1,
                                        ),
                                        color: const Color(0xff73c4ff),
                                      ),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).pop(); // 현재 팝업 창 닫기
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return Dialog(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(10),
                                                ),
                                                child: Container(
                                                  width: 303,
                                                  height: 196,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(10),
                                                    border: Border.all(
                                                      color: const Color(0xff8c8c8c),
                                                      width: 1,
                                                    ),
                                                    color: Colors.white,
                                                  ),
                                                  child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      Align(
                                                        alignment: Alignment.center,
                                                        child: SizedBox(
                                                          width: 303,
                                                          height: 102,
                                                          child: SingleChildScrollView(
                                                            child: Column(
                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                              children: [
                                                                RichText(
                                                                  textAlign: TextAlign.center,
                                                                  text: const TextSpan(
                                                                    style: TextStyle(
                                                                      fontSize: 18,
                                                                      fontFamily: "Inter",
                                                                      fontWeight: FontWeight.w700,
                                                                      color: Colors.black,
                                                                    ),
                                                                    children: [
                                                                      TextSpan(text: "[ "),
                                                                      TextSpan(
                                                                        text: "HCI",
                                                                        style: TextStyle(
                                                                          color: Colors.blue,
                                                                        ),
                                                                      ),
                                                                      TextSpan(text: " ] 이(가)\n수강 취소되었습니다."),
                                                                    ],
                                                                  ),
                                                                ),
                                                                const SizedBox(height: 10),
                                                                const Text(
                                                                  "<현재 수강신청>",
                                                                  style: TextStyle(
                                                                    fontSize: 14,
                                                                    fontWeight: FontWeight.bold,
                                                                    color: Colors.grey,
                                                                  ),
                                                                  textAlign: TextAlign.center,
                                                                ),
                                                                const Text(
                                                                  "9학점",
                                                                  style: TextStyle(
                                                                    fontSize: 14,
                                                                    fontWeight: FontWeight.bold,
                                                                    color: Colors.grey,
                                                                  ),
                                                                  textAlign: TextAlign.center,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.transparent,
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                        ),
                                        child: const Text(
                                          '확인',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff00b6ad),
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                    side: const BorderSide(
                      color: Color(0xffc4d0ee),
                      width: 1,
                    ),
                  ),
                  elevation: 4,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 45,
                      height: 45,
                      child: Image.asset('assets/images/delete_sub.png'),
                    ),
                    Container(
                      width: 135,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: const Color(0xff00b6ad),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        '수강신청 취소',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class Schedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
              '시간표',
            style: TextStyle(
              color: Color(0xff0066B3),
              fontWeight: FontWeight.bold,
              fontSize: 22,
            )
          ),
          leading:
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: FaIcon(FontAwesomeIcons.chevronLeft, size: 25, color: Color(0xff0066B3))
            ),
          centerTitle: true,
          backgroundColor: Color(0xffE2F3FF),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Stack(
                  children: [
                    Container(
                      width: 393,
                      height: 150,
                      margin: EdgeInsets.all(12),
                      child:  Text(
                        "15학점 / 7과목",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Color(0xff333333)
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 65, bottom: 80),
                      child: Align(
                          alignment: Alignment(0.0, 0.0),
                          child: Container(width: 370, height: 735,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xffD3D3D3),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(15),

                            ),
                          )
                      ),
                    ),

                    Positioned(
                      child: Container(
                        width: 370,
                        height: 2,
                        color: Color(0xffD3D3D3),
                      ),
                      top: 95,
                      left: 11.5,
                    ),

                    Positioned(
                      child: Container(
                        width: 370,
                        height: 2,
                        color: Color(0xffD3D3D3),
                      ),
                      top: 150,
                      left: 11.5,
                    ),

                    Positioned(
                      child: Container(
                        width: 370,
                        height: 2,
                        color: Color(0xffD3D3D3),
                      ),
                      top: 215,
                      left: 11.5,
                    ),

                    Positioned(
                      child: Container(
                        width: 370,
                        height: 2,
                        color: Color(0xffD3D3D3),
                      ),
                      top: 280,
                      left: 11.5,
                    ),

                    Positioned(
                      child: Container(
                        width: 370,
                        height: 2,
                        color: Color(0xffD3D3D3),
                      ),
                      top: 345,
                      left: 11.5,
                    ),

                    Positioned(
                      child: Container(
                        width: 370,
                        height: 2,
                        color: Color(0xffD3D3D3),
                      ),
                      top: 410,
                      left: 11.5,
                    ),

                    Positioned(
                      child: Container(
                        width: 370,
                        height: 2,
                        color: Color(0xffD3D3D3),
                      ),
                      top: 475,
                      left: 11.5,
                    ),

                    Positioned(
                      child: Container(
                        width: 370,
                        height: 2,
                        color: Color(0xffD3D3D3),
                      ),
                      top: 540,
                      left: 11.5,
                    ),

                    Positioned(
                      child: Container(
                        width: 370,
                        height: 2,
                        color: Color(0xffD3D3D3),
                      ),
                      top: 605,
                      left: 11.5,
                    ),

                    Positioned(
                      child: Container(
                        width: 370,
                        height: 2,
                        color: Color(0xffD3D3D3),
                      ),
                      top: 670,
                      left: 11.5,
                    ),

                    Positioned(
                      child: Container(
                        width: 370,
                        height: 2,
                        color: Color(0xffD3D3D3),
                      ),
                      top: 735,
                      left: 11.5,
                    ),
// 가로선 끝

                    Positioned(
                      child: Container(
                        width: 2,
                        height: 735,
                        color: Color(0xffD3D3D3)
                      ),
                      top: 65,
                      left: 37,
                    ),

                    Positioned(
                      child: Container(
                          width: 2,
                          height: 735,
                          color: Color(0xffD3D3D3)
                      ),
                      top: 65,
                      left: 102,
                    ),

                    Positioned(
                      child: Container(
                          width: 2,
                          height: 735,
                          color: Color(0xffD3D3D3)
                      ),
                      top: 65,
                      left: 172,
                    ),

                    Positioned(
                      child: Container(
                          width: 2,
                          height: 735,
                          color: Color(0xffD3D3D3)
                      ),
                      top: 65,
                      left: 242,
                    ),

                    Positioned(
                      child: Container(
                          width: 2,
                          height: 735,
                          color: Color(0xffD3D3D3)
                      ),
                      top: 65,
                      left: 312,
                    ),
//세로선 끝
                    Positioned(
                      child: Text(
                        "월",
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                      top: 70,
                      left: 62,
                    ),

                    Positioned(
                      child: Text(
                        "화",
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                      top: 70,
                      left: 132,
                    ),

                    Positioned(
                      child: Text(
                        "수",
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                      top: 70,
                      left: 202,
                    ),

                    Positioned(
                      child: Text(
                        "목",
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                      top: 70,
                      left: 272,
                    ),

                    Positioned(
                      child: Text(
                        "금",
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                      top: 70,
                      left: 342,
                    ),

//요일 작성 끝

                  Positioned(
                    child: Text(
                      "9",
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    top: 100,
                    left: 25,
                  ),

                  Positioned(
                    child: Text(
                      "10",
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    top: 155,
                    left: 19,
                  ),

                  Positioned(
                    child: Text(
                      "11",
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    top: 220,
                    left: 19,
                  ),

                  Positioned(
                    child: Text(
                      "12",
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    top: 285,
                    left: 19,
                  ),

                  Positioned(
                    child: Text(
                      "1",
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    top: 350,
                    left: 25,
                  ),

                  Positioned(
                    child: Text(
                      "2",
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    top: 415,
                    left: 25,
                  ),

                  Positioned(
                    child: Text(
                      "3",
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    top: 480,
                    left: 25,
                  ),

                  Positioned(
                    child: Text(
                      "4",
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    top: 545,
                    left: 25,
                  ),

                  Positioned(
                    child: Text(
                      "5",
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    top: 610,
                    left: 25,
                  ),

                  Positioned(
                    child: Text(
                      "6",
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    top: 675,
                    left: 25,
                  ),

                  Positioned(
                    child: Text(
                      "7",
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    top: 740,
                    left: 25,
                  ),

//시간 작성 끝

                  Positioned(
                    child: Container(
                      width: 63,
                      height: 193,
                      color: Color(0xff185DC4),
                    ),
                    top: 412,
                    left: 39,
                  ),

                  Positioned(
                    child: Container(
                      width: 68,
                      height: 128,
                      color: Color(0xff4D94FF),
                    ),
                    top: 152,
                    left: 104,
                  ),

                  Positioned(
                    child: Container(
                      width: 68,
                      height: 128,
                      color: Color(0xff8BBAFF),
                    ),
                    top: 282,
                    left: 104,
                  ),

                  Positioned(
                    child: Container(
                      width: 68,
                      height: 128,
                      color: Color(0xff335B97),
                    ),
                    top: 412,
                    left: 104,
                  ),

                  Positioned(
                    child: Container(
                      width: 68,
                      height: 96,
                      color: Color(0xffB59AE2),
                    ),
                    top: 672,
                    left: 104,
                  ),

                  Positioned(
                    child: Container(
                      width: 68,
                      height: 128,
                      color: Color(0xff4D94FF),
                    ),
                    top: 152,
                    left: 244,
                  ),

                  Positioned(
                    child: Container(
                      width: 68,
                      height: 128,
                      color: Color(0xff8BBAFF),
                    ),
                    top: 282,
                    left: 244,
                  ),

                  Positioned(
                    child: Container(
                      width: 68,
                      height: 63,
                      color: Color(0xff1CBDE0),
                    ),
                    top: 412,
                    left: 244,
                  ),

                  Positioned(
                    child: Container(
                      width: 68,
                      height: 96,
                      color: Color(0xffB59AE2),
                    ),
                    top: 672,
                    left: 244,
                  ),

                  Positioned(
                    child: Container(
                      width: 65,
                      height: 63,
                      color: Color(0xff8655D5),
                    ),
                    top: 607,
                    left: 314,
                  ),

//수업 시간 별 칸 채우기 끝

                  Positioned(
                    top: 460,
                    left: 52,
                    child: Text(
                        "창업과\n세금",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          ),
                        ),
                    ),

                  Positioned(
                    top: 504,
                    left: 40,
                    child: Text(
                      "10104\n김준국, 문성훈",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ),

                  Positioned(
                    top: 175,
                    left: 107,
                    child: Text(
                      "증강현실\n기초및실습",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                  ),

                  Positioned(
                    top: 220,
                    left: 121,
                    child: Text(
                      "1116-3\n이정",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ),

                  Positioned(
                    top: 300,
                    left: 107,
                    child: Text(
                      "SW\n창업전략과\n펀딩",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                  ),

                  Positioned(
                    top: 360,
                    left: 124,
                    child: Text(
                      "8428\n박지현",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ),

                  Positioned(
                    top: 435,
                    left: 119,
                    child: Text(
                      "스포츠\n-골프",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                  ),

                  Positioned(
                    top: 480,
                    left: 122,
                    child: Text(
                      "16111\n김성배",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ),

                  Positioned(
                    top: 685,
                    left: 104.5,
                    child: Text(
                      "소프트웨어\n캡스톤디자인",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),

                  Positioned(
                    top: 725,
                    left: 124,
                    child: Text(
                      "A1400\n박찬영",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ),

                  Positioned(
                    top: 175,
                    left: 248,
                    child: Text(
                      "증강현실\n기초및실습",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                  ),

                  Positioned(
                    top: 220,
                    left: 262,
                    child: Text(
                      "1116-3\n이정",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ),

                  Positioned(
                    top: 300,
                    left: 248,
                    child: Text(
                      "SW\n창업전략과\n펀딩",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                  ),

                  Positioned(
                    top: 360,
                    left: 264,
                    child: Text(
                      "8428\n박지현",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ),

                  Positioned(
                    top: 413,
                    left: 253,
                    child: Text(
                      "소프트웨어\n세미나2",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                      ),
                    ),
                  ),

                  Positioned(
                    top: 448,
                    left: 264,
                    child: Text(
                      "1102\n김진국",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ),

                  Positioned(
                    top: 685,
                    left: 245,
                    child: Text(
                      "소프트웨어\n캡스톤디자인",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),

                  Positioned(
                    top: 725,
                    left: 263,
                    child: Text(
                      "A1400\n박찬영",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ),

                  Positioned(
                    top: 610,
                    left: 326,
                    child: Text(
                      "오디세이\n세미나3",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                      ),
                    ),
                  ),

                  Positioned(
                    top: 645,
                    left: 333.5,
                    child: Text(
                      "1163\n박재훈",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 9,
                      ),
                    ),
                  ),

//시간표 끝

                  Container(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 3,
                      ),
                      margin: EdgeInsets.only(top: 820,)
                  ),


                  Container(
                    child:
                    Subject_01(),
                    margin: EdgeInsets.only(top: 830, bottom: 20),
                    // const Divider(
                    //   color: Colors.grey, // 회색 선
                    //   thickness: 3, // 선의 두께
                    // ),
                  ),

                  Container(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 3,
                    ),
                    margin: EdgeInsets.only(top: 1033,)
                  ),



                  ]
              ),

            ],
          )

        ),
      ),
    );
  }
}