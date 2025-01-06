import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_project/login.dart';
import 'package:flutter_project/search.dart';
import 'package:flutter_project/settings.dart';
import 'package:flutter_project/timetable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_project/timetable A.dart';
import 'package:flutter_project/search A.dart';
import 'package:flutter_project/check B.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0.0,
          leading:Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Image.asset('assets/images/drawButton.png', width: 40, height: 40,),
                color: Color.fromRGBO(00, 66, 35, 0),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
          actions: [
            IconButton(
              icon: Image.asset('assets/images/schedule.png', width: 40, height: 40,),
              onPressed: () => {
                // 시간표 버튼을 눌렀을 때 할 작동
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Schedule(),
                  ),
                ),
              },
              color: Color.fromRGBO(00, 66, 35, 0),
            ),
          ],
          title: Image.asset('assets/images/main-logo.png', width: 78, height: 43),
        ),
        drawer: CustomDrawer(),
        body: Column(
          children: [
            Container(
                width: 390,
                height: 230,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(226, 243, 255, 1),
                ),
                child:
                MyCustomMenu()
            ),
            MenuRow(
              title: '조회',
              subtitle: '개설과목 조회',
              imagePath: 'assets/images/viewIcon.png',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SearchPage(),
                  ),
                );
              },
            ),
            Divider(
              height: 0.5,
              color: Colors.grey,
              thickness: 0.5,),
            MenuRow(
              title: '장바구니',
              subtitle: '개설과목 조회/신청/삭제',
              imagePath: 'assets/images/cartIcon.png',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SearchPageA(),
                  ),
                );
              },
            ),
            Divider(
              height: 0.5,
              color: Colors.grey,
              thickness: 0.5,),
            MenuRow(
              title: '수강신청',
              subtitle: '수강신청 조회/삭제',
              imagePath: 'assets/images/enrollmentIcon.png',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SelectionB(),
                  ),
                );
              },
            ),
            Divider(
              height: 0.5,
              color: Colors.grey,
              thickness: 0.5,),
            MenuRow(
              title: '관심목록',
              subtitle: '개설과목 조회',
              imagePath: 'assets/images/wishList.png',
              onTap: () => {
                // 시간표 버튼을 눌렀을 때 할 작동
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ScheduleA(),
                  ),
                ),
              },
            ),
          ],
        )
    );
  }
}


class CustomDrawer extends StatelessWidget {

  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromRGBO(187, 226, 255, 1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '개인정보',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(height: 5),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/profile.png', width: 70, height: 70),
                          SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '이름: 홍길동',
                                style: TextStyle(fontSize: 14),
                              ),
                              Text(
                                '학번: 20210001',
                                style: TextStyle(fontSize: 14),
                              ),
                              Text(
                                '학과: 컴퓨터 공학',
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, top: 20.0),
            child: Text(
              '잔여학점',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black54),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Color.fromRGBO(187, 226, 255, 1),
            ),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('현재 학기 잔여학점', style: TextStyle(fontSize: 16, color: Colors.black54)),
                SizedBox(height: 10,),
                Text('10', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                SizedBox(height: 10,),
                Text('총 잔여학점', style: TextStyle(fontSize: 16, color: Colors.black54)),
                SizedBox(height: 10,),
                Text('20', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Color.fromRGBO(187, 226, 255, 1),
            ),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '전공 교학팀 전화번호: ',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10,),
                Text(
                  '033-***-****',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 10,),
                Text(
                  '복수전공 교학팀 전화번호: ',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10,),
                Text(
                  '033-***-****',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          SizedBox(height: 80,),
          Divider(
            color: Colors.black,
            height: 10,
          ),
          ListTile(
            leading: Image.asset('assets/images/settings.png', width: 30, height: 30),
            title: Text('설 정', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black54)),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => SettingsPage()),
              );
            },
          ),
          Divider(
            color: Colors.black,
            height: 10,
          ),
          ListTile(
            leading: Image.asset('assets/images/logout.png', width: 30, height: 30),
            title: Text('로그아웃', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black54)),
            onTap: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              await prefs.setBool('autoLoginStatus', false);

              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => MyApp()),
                    (route) => false,
              );
            },
          )
        ],
      ),
    );
  }

}



class MenuRow extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;
  final Function() onTap;

  const MenuRow({
    required this.title,
    required this.subtitle,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            SizedBox(width: 20),
            Image.asset(
              imagePath,
              width: 48,
              height: 48,
            ),
            SizedBox(width: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromRGBO(70, 70, 70, 1),
                  ),
                ),
              ],
            ),
            Spacer(),
            Image.asset(
              'assets/images/arrow.png',
              width: 48,
              height: 48,
            ),
            SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}

class MyCustomMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {


    return ListView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.all(30),
      children: <Widget>[
        Container(
          color: Color.fromRGBO(226, 243, 255, 1),
          child: Center(
            child: Container(
              padding: EdgeInsets.all(20.0),
              width: 284,
              height: 162,
              child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("학사일정",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(10, 80, 164, 1)
                    ),),
                  SizedBox(height: 10,),
                  Text(
                    "수강신청 기간",
                    style: TextStyle(
                        fontSize: 20
                    ),
                  ),
                  Text(
                    "23.08.14(월)~23.08.21(월)",
                    style: TextStyle(
                        fontSize: 20
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all()
              ),
            ),
          ),
        ),
        SizedBox(width: 30,),
        Container(
          color: Color.fromRGBO(226, 243, 255, 1),
          child: Center(
            child: Container(
              width: 284,
              height: 162,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Text("나의 일정",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(10, 80, 164, 1)
                      ),),
                  ),
                  Center(
                    child: Text(
                      "< " +
                          DateTime.now().year.toString() +
                          "." +
                          DateTime.now().month.toString().padLeft(2,'0') +
                          " >",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                      ),
                    ),),
                  SizedBox(height: 10,),
                  MyCustomTable()
                ],
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all()
              ),
            ),
          ),
        ),
      ],
    );
  }
}
class MyCustomTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    // Find the beginning of the week.
    var startOfWeek = now.subtract(Duration(days: now.weekday - 1));

    var daysOfWeek = ['일', '월', '화', '수', '목', '금', '토'];
    var dateColors = [Colors.red, Colors.black, Colors.black, Colors.black, Colors.black, Colors.black, Colors.blue];

    return Table(
      children: [
        TableRow(
          children: List.generate(
            7,
                (i) => Center(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8), // 요일과 날짜 사이의 간격 설정
                child: Text(
                  daysOfWeek[i],
                  style: TextStyle(
                      color: dateColors[i],
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                  ),
                ),
              ),
            ),
          ),
        ),
        TableRow(
          children: List.generate(
            7,
                (i) => Center(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8), // 요일과 날짜 사이의 간격 설정
                child: Text(
                  startOfWeek.add(Duration(days: i)).day.toString(),
                  style: TextStyle(
                    fontSize: 18,
                    color: dateColors[i],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}