import 'package:flutter/material.dart';
import 'package:flutter_project/basket.dart';
import 'package:flutter_project/check.dart';
import 'package:flutter_project/mainPage.dart';
import 'package:flutter_project/search.dart';
import 'package:flutter_project/timetable.dart';

class MajorSub extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('assets/images/back-button.png'),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => SearchPage()),
              );
            }
        ),
        title: Text(
          '조회',
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
            onPressed: () => {
              // 시간표 버튼을 눌렀을 때 할 작동
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Schedule(),
                ),
              ),
            },
          ),
        ],
        backgroundColor: Color(0xFFE2F3FF),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
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
          Expanded(
            child: ListView(
              children: [
                DepartmentMenuTile(
                  department: '★  소프트웨어학부',
                  subMenuItems: [
                    DepartmentSubMenuTile(
                      title: '요일별',
                      subItems: ['월', '화', '수', '목', '금'],
                    ),
                    DepartmentSubMenuTile(
                      title: '수준별',
                      subItems: ['1학년', '2학년', '3학년', '4학년'],
                    ),
                  ],
                ),
            Divider(
              height: 0.5,
              color: Colors.grey,
              thickness: 0.5,),
                DepartmentMenuTile(
                  department: '(가) 학과',
                  subMenuItems: [
                    DepartmentSubMenuTile(
                      title: '요일별',
                      subItems: ['월', '화', '수', '목', '금'],
                    ),
                    DepartmentSubMenuTile(
                      title: '수준별',
                      subItems: ['1학년', '2학년', '3학년', '4학년'],
                    ),
                  ],
                ),
                Divider(
                  height: 0.5,
                  color: Colors.grey,
                  thickness: 0.5,),
                DepartmentMenuTile(
                  department: '(나) 학과',
                  subMenuItems: [
                    DepartmentSubMenuTile(
                      title: '요일별',
                      subItems: ['월', '화', '수', '목', '금'],
                    ),
                    DepartmentSubMenuTile(
                      title: '수준별',
                      subItems: ['1학년', '2학년', '3학년', '4학년'],
                    ),
                  ],
                ),
                Divider(
                  height: 0.5,
                  color: Colors.grey,
                  thickness: 0.5,),
                DepartmentMenuTile(
                  department: '(다) 학과',
                  subMenuItems: [
                    DepartmentSubMenuTile(
                      title: '요일별',
                      subItems: ['월', '화', '수', '목', '금'],
                    ),
                    DepartmentSubMenuTile(
                      title: '수준별',
                      subItems: ['1학년', '2학년', '3학년', '4학년'],
                    ),
                  ],
                ),
                Divider(
                  height: 0.5,
                  color: Colors.grey,
                  thickness: 0.5,),
                DepartmentMenuTile(
                  department: '(라) 학과',
                  subMenuItems: [
                    DepartmentSubMenuTile(
                      title: '요일별',
                      subItems: ['월', '화', '수', '목', '금'],
                    ),
                    DepartmentSubMenuTile(
                      title: '수준별',
                      subItems: ['1학년', '2학년', '3학년', '4학년'],
                    ),
                  ],
                ),
                Divider(
                  height: 0.5,
                  color: Colors.grey,
                  thickness: 0.5,),
                DepartmentMenuTile(
                  department: '(마) 학과',
                  subMenuItems: [
                    DepartmentSubMenuTile(
                      title: '요일별',
                      subItems: ['월', '화', '수', '목', '금'],
                    ),
                    DepartmentSubMenuTile(
                      title: '수준별',
                      subItems: ['1학년', '2학년', '3학년', '4학년'],
                    ),
                  ],
                ),
                Divider(
                  height: 0.5,
                  color: Colors.grey,
                  thickness: 0.5,),
                DepartmentMenuTile(
                  department: '(바) 학과',
                  subMenuItems: [
                    DepartmentSubMenuTile(
                      title: '요일별',
                      subItems: ['월', '화', '수', '목', '금'],
                    ),
                    DepartmentSubMenuTile(
                      title: '수준별',
                      subItems: ['1학년', '2학년', '3학년', '4학년'],
                    ),
                  ],
                ),
                Divider(
                  height: 0.5,
                  color: Colors.grey,
                  thickness: 0.5,),
                DepartmentMenuTile(
                  department: '(사) 학과',
                  subMenuItems: [
                    DepartmentSubMenuTile(
                      title: '요일별',
                      subItems: ['월', '화', '수', '목', '금'],
                    ),
                    DepartmentSubMenuTile(
                      title: '수준별',
                      subItems: ['1학년', '2학년', '3학년', '4학년'],
                    ),
                  ],
                ),
                Divider(
                  height: 0.5,
                  color: Colors.grey,
                  thickness: 0.5,),
                DepartmentMenuTile(
                  department: '(아) 학과',
                  subMenuItems: [
                    DepartmentSubMenuTile(
                      title: '요일별',
                      subItems: ['월', '화', '수', '목', '금'],
                    ),
                    DepartmentSubMenuTile(
                      title: '수준별',
                      subItems: ['1학년', '2학년', '3학년', '4학년'],
                    ),
                  ],
                ),
                Divider(
                  height: 0.5,
                  color: Colors.grey,
                  thickness: 0.5,),
                DepartmentMenuTile(
                  department: '(자) 학과',
                  subMenuItems: [
                    DepartmentSubMenuTile(
                      title: '요일별',
                      subItems: ['월', '화', '수', '목', '금'],
                    ),
                    DepartmentSubMenuTile(
                      title: '수준별',
                      subItems: ['1학년', '2학년', '3학년', '4학년'],
                    ),
                  ],
                ),
                Divider(
                  height: 0.5,
                  color: Colors.grey,
                  thickness: 0.5,),
                DepartmentMenuTile(
                  department: '(차) 학과',
                  subMenuItems: [
                    DepartmentSubMenuTile(
                      title: '요일별',
                      subItems: ['월', '화', '수', '목', '금'],
                    ),
                    DepartmentSubMenuTile(
                      title: '수준별',
                      subItems: ['1학년', '2학년', '3학년', '4학년'],
                    ),
                  ],
                ),
                Divider(
                  height: 0.5,
                  color: Colors.grey,
                  thickness: 0.5,),
                DepartmentMenuTile(
                  department: '(카) 학과',
                  subMenuItems: [
                    DepartmentSubMenuTile(
                      title: '요일별',
                      subItems: ['월', '화', '수', '목', '금'],
                    ),
                    DepartmentSubMenuTile(
                      title: '수준별',
                      subItems: ['1학년', '2학년', '3학년', '4학년'],
                    ),
                  ],
                ),
                Divider(
                  height: 0.5,
                  color: Colors.grey,
                  thickness: 0.5,),
                DepartmentMenuTile(
                  department: '(타) 학과',
                  subMenuItems: [
                    DepartmentSubMenuTile(
                      title: '요일별',
                      subItems: ['월', '화', '수', '목', '금'],
                    ),
                    DepartmentSubMenuTile(
                      title: '수준별',
                      subItems: ['1학년', '2학년', '3학년', '4학년'],
                    ),
                  ],
                ),
                Divider(
                  height: 0.5,
                  color: Colors.grey,
                  thickness: 0.5,),
                DepartmentMenuTile(
                  department: '(파) 학과',
                  subMenuItems: [
                    DepartmentSubMenuTile(
                      title: '요일별',
                      subItems: ['월', '화', '수', '목', '금'],
                    ),
                    DepartmentSubMenuTile(
                      title: '수준별',
                      subItems: ['1학년', '2학년', '3학년', '4학년'],
                    ),
                  ],
                ),
                Divider(
                  height: 0.5,
                  color: Colors.grey,
                  thickness: 0.5,),
                DepartmentMenuTile(
                  department: '(하) 학과',
                  subMenuItems: [
                    DepartmentSubMenuTile(
                      title: '요일별',
                      subItems: ['월', '화', '수', '목', '금'],
                    ),
                    DepartmentSubMenuTile(
                      title: '수준별',
                      subItems: ['1학년', '2학년', '3학년', '4학년'],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DepartmentMenuTile extends StatefulWidget {
  final String department;
  final List<DepartmentSubMenuTile> subMenuItems;


  DepartmentMenuTile({required this.department, required this.subMenuItems});

  @override
  _DepartmentMenuTileState createState() => _DepartmentMenuTileState();
}

class _DepartmentMenuTileState extends State<DepartmentMenuTile> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      elevation: 1,
      expandedHeaderPadding: EdgeInsets.all(0),
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _isExpanded = !isExpanded;
        });
      },
      children: [
        ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(widget.department),
            );
          },
          body: Column(
            children: widget.subMenuItems,
          ),
          isExpanded: _isExpanded,
        ),
      ],
    );
  }
}

class DepartmentSubMenuTile extends StatefulWidget {
  final String title;
  final List<String> subItems;

  DepartmentSubMenuTile({required this.title, required this.subItems});

  @override
  _DepartmentSubMenuTileState createState() => _DepartmentSubMenuTileState();
}

class _DepartmentSubMenuTileState extends State<DepartmentSubMenuTile> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      elevation: 0,
      expandedHeaderPadding: EdgeInsets.all(0),
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _isExpanded = !isExpanded;
        });
      },
      children: [
        ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(widget.title),
            );
          },
          body: Column(
            children: widget.subItems.map((subItem) {
              return ListTile(
                title: Text(subItem),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Selection()),
                  );
                },
              );
            }).toList(),
          ),
          isExpanded: _isExpanded,
        ),
      ],
    );
  }
}
