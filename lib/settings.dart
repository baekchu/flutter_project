import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _toggleValue1 = false;
  bool _toggleValue2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("설정", style: TextStyle(color: Color.fromRGBO(14, 92, 188, 1), fontSize: 22, fontWeight: FontWeight.bold),),
          backgroundColor: Color.fromRGBO(220, 240, 255, 1),
          centerTitle: true,
          elevation: 0.0,
          leading:Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Image.asset('assets/images/back-button.png', width: 40, height: 40,),
              color: Color.fromRGBO(10, 80, 164, 1),
              onPressed: () {
                Navigator.pop(context);
              },
            );
          },
        ),
        ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  Text(
                    "푸시알람",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color.fromRGBO(11, 80, 164, 1),
                    ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    SizedBox(width: 10,),
                    Image.asset('assets/images/ring-bell.png', width: 40, height: 40),
                    SizedBox(width: 15),
                    Text('알림', style: TextStyle(color: Color.fromRGBO(22, 45, 110, 1), fontWeight: FontWeight.bold, fontSize: 20),),
                    Spacer(),
                    Switch(
                      value: _toggleValue1,
                      onChanged: (bool value) {
                        setState(() {
                          _toggleValue1 = value;
                        });
                      },
                    ),
                    SizedBox(width: 20,)
                  ],
                ),
                SizedBox(height: 20,),
                Divider(height: 1, color: Colors.black54,),
                SizedBox(height: 20,),
                Row(
                  children: [
                    SizedBox(width: 10,),
                    Image.asset('assets/images/do-not-disturb.png', width: 40, height: 40),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        Text('방해금지모드', style: TextStyle(color: Color.fromRGBO(22, 45, 110, 1), fontWeight: FontWeight.bold, fontSize: 20),),
                        SizedBox(height: 10,),
                        Text("09:00 ~ 18:00", style: TextStyle(fontSize: 15,),)
                      ]
                    ),
                    Spacer(),
                    Switch(
                      value: _toggleValue2,
                      onChanged: (bool value) {
                        setState(() {
                          _toggleValue2 = value;
                        });
                      },
                    ),
                    SizedBox(width: 20,),
                  ],
                ),
                SizedBox(height: 10,),
                Padding(padding: EdgeInsets.only(left: 10),
                child: Text("설정한 시간동안 모든 푸시 알림이 오지 않습니다.", style: TextStyle(color: Colors.black45),)
                  ,),
                SizedBox(height: 10,),
                Divider(thickness: 5, color: Colors.black12,),
                SizedBox(height: 10,),
                Text("개인정보 및 앱 정보",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color.fromRGBO(11, 80, 164, 1),
                    ),),
                SizedBox(height: 20,),
                InkWell(
                  onTap: () {
                    print("Change Password");
                  },
                  child: Row(
                    children: [
                      SizedBox(width: 10,),
                      Image.asset('assets/images/change-password.png', width: 40, height: 40),
                      SizedBox(width: 15),
                      Text('비밀번호 변경', style: TextStyle(color: Color.fromRGBO(22, 45, 110, 1), fontWeight: FontWeight.bold, fontSize: 20),),
                      Spacer(),
                      SizedBox(width: 20,)
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Divider(height: 1, color: Colors.black54,),
                SizedBox(height: 20,),
                InkWell(
                  onTap: () {
                    print("Change Password");
                  },
                  child: Row(
                    children: [
                      SizedBox(width: 10,),
                      Image.asset('assets/images/version-check.png', width: 40, height: 40),
                      SizedBox(width: 15),
                      Text('버전확인(1.0.0)', style: TextStyle(color: Color.fromRGBO(22, 45, 110, 1), fontWeight: FontWeight.bold, fontSize: 20),),
                      Spacer(),
                      SizedBox(width: 20,)
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Divider(height: 1, color: Colors.black54,),
                SizedBox(height: 20,),
                InkWell(
                  onTap: () {
                    print("Change Password");
                  },
                  child: Row(
                    children: [
                      SizedBox(width: 10,),
                      Image.asset('assets/images/logout3.png', width: 40, height: 40),
                      SizedBox(width: 15),
                      Text('로그아웃', style: TextStyle(color: Color.fromRGBO(22, 45, 110, 1), fontWeight: FontWeight.bold, fontSize: 20),),
                      Spacer(),
                      SizedBox(width: 20,)
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Divider(height: 1, color: Colors.black54,),
                SizedBox(height: 20,),
                InkWell(
                  onTap: () {
                    print("Change Password");
                  },
                  child: Row(
                    children: [
                      SizedBox(width: 10,),
                      Image.asset('assets/images/reset.png', width: 40, height: 40),
                      SizedBox(width: 15),
                      Text('초기화', style: TextStyle(color: Color.fromRGBO(22, 45, 110, 1), fontWeight: FontWeight.bold, fontSize: 20),),
                      Spacer(),
                      SizedBox(width: 20,)
                    ],
                  ),
                )

              ],
            ),
          ),
        ],
      ),
    );
  }
}
