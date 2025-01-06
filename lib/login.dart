import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'mainPage.dart';


class AutoLoginCheckbox extends StatefulWidget {
  final bool isAutoLoginEnabled;
  final Function(bool) onChanged;

  const AutoLoginCheckbox({
    required this.isAutoLoginEnabled,
    required this.onChanged,
  });

  @override
  _AutoLoginCheckboxState createState() => _AutoLoginCheckboxState();
}

class _AutoLoginCheckboxState extends State<AutoLoginCheckbox> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Checkbox(
                value: widget.isAutoLoginEnabled,
                onChanged: (value) {
                  widget.onChanged(value ?? false);
                },
              ),
              Text('자동 로그인'),
              SizedBox(width: 35),
            ],
          ),
        ),
      ],
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isAutoLoginEnabled = false;

  @override
  void initState() {
    super.initState();
    loadAutoLoginStatus();
  }

  Future<void> loadAutoLoginStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool autoLoginStatus = prefs.getBool('autoLoginStatus') ?? false;

    setState(() {
      isAutoLoginEnabled = autoLoginStatus;
    });

    if (isAutoLoginEnabled) {
      // 자동 로그인 체크되어 있으면 다음 페이지로 바로 이동
      navigateToNextPage();
    }
  }

  void navigateToNextPage() {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => MainPage()),
        (router) => false
    );
  }

  Future<void> saveAutoLoginStatus(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('autoLoginStatus', value);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 200),
                Image.asset('assets/images/hallym.png.png'),
                SizedBox(height: 50),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    width: 300,
                    height: 50,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                        prefixIcon: Icon(Icons.supervisor_account_rounded),
                        hintText: "학번 입력",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        fillColor: Color.fromRGBO(224, 229, 240, 0.5),
                        filled: true,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    width: 300,
                    height: 50,
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                        prefixIcon: Icon(Icons.lock),
                        hintText: "비밀번호",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        fillColor: Color.fromRGBO(224, 229, 240, 0.5),
                        filled: true,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                AutoLoginCheckbox(
                  isAutoLoginEnabled: isAutoLoginEnabled,
                  onChanged: (value) {
                    setState(() {
                      isAutoLoginEnabled = value;
                      saveAutoLoginStatus(isAutoLoginEnabled);
                    });
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (isAutoLoginEnabled) {
                      saveAutoLoginStatus(isAutoLoginEnabled);
                    }
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MainPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(42, 99, 173, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    minimumSize: Size(300, 50),
                  ),
                  child: Text('로그인'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
