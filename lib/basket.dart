import 'package:flutter/material.dart';
import 'lectureEvaluation.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Hide the debug banner
      home: Scaffold(
        appBar: CustomAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Subject_01(),
              const Divider(
                color: Colors.grey, // 회색 선
                thickness: 3, // 선의 두께
              ),
              /*Subject_02(),
              const Divider(
                color: Colors.grey, // 회색 선
                thickness: 3, // 선의 두께
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xffe2f3ff),
      centerTitle: true,
      title: const Text(
        '장바구니',
        style: TextStyle(
          color: Color(0xff0066b3),
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: IconButton(
        icon: const Icon(
          Icons.chevron_left,
          color: Color(0xff0066b3),
          size: 45,
        ),
        onPressed: () {
          // 왼쪽 이미지를 눌렀을 때 수행할 동작
        },
      ),
      actions: [
        IconButton(
          icon: Image.asset('assets/images/calendar-check-01.png',
            width: 38,
            height: 38,
          ),
          onPressed: () {
            // 오른쪽 이미지를 눌렀을 때 수행할 동작
          },
        ),
      ],
    );
  }
}

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
                  child: const Center(
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
                                        TextSpan(text: " ] 를(을)\n장바구니에 신청하시겠습니까?"),
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
                                                                      TextSpan(text: " ] 이(가)\n장바구니에 신청되었습니다."),
                                                                    ],
                                                                  ),
                                                                ),
                                                                const SizedBox(height: 10),
                                                                const Text(
                                                                  "<현재 장바구니>",
                                                                  style: TextStyle(
                                                                    fontSize: 14,
                                                                    fontWeight: FontWeight.bold,
                                                                    color: Colors.grey,
                                                                  ),
                                                                  textAlign: TextAlign.center,
                                                                ),
                                                                const Text(
                                                                  "12학점",
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
                      child: Image.asset('assets/images/pin-02.png'),
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
                        '장바구니에 추가',
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