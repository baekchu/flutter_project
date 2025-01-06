import 'package:flutter/material.dart';
import 'package:flutter_project/majorSubList.dart';

class MajorPage extends StatefulWidget {
  final List<String> subList;

  MajorPage({required this.subList});

  @override
  _MajorPageState createState() => _MajorPageState();
}

class _MajorPageState extends State<MajorPage> {
  List<String> filteredSubList = [];

  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredSubList = widget.subList;
  }

  void filterSubList(String keyword) {
    setState(() {
      if (keyword.isNotEmpty) {
        filteredSubList = widget.subList
            .where((item) => item.toLowerCase().contains(keyword.toLowerCase()))
            .toList();
      } else {
        filteredSubList = widget.subList;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            '조회',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(30)
              ),
              child: TextField(
                controller: searchController,
                onChanged: filterSubList,
                decoration: InputDecoration(
                  labelText: '검색어 입력',
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: filteredSubList.length,
              separatorBuilder: (context, index) => Divider(
                color: Colors.grey,
                thickness: 1.5,
              ),
              itemBuilder: (context, index) {
                final subItem = filteredSubList[index];

                return ListTile(
                  title: Text(
                    subItem,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => MajorSub()),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}