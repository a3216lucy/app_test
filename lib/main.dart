import 'package:app_test/pages/apps.dart';
import 'package:app_test/pages/calendar.dart';
import 'package:app_test/pages/home_page.dart';
import 'package:app_test/pages/setting.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        useMaterial3: true,
      ),
      home: const BottomNavigationBarTool(),
    );
  }
}

class BottomNavigationBarTool extends StatefulWidget {
  const BottomNavigationBarTool({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarTool> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<BottomNavigationBarTool> {
  // 目前選擇頁索引值，預設值為 0
  int _currentIndex = 0;
  // 頁面列表
  final pages = [
    const HomePage(),
    const Apps(),
    const Calendar(),
    const Setting()
  ];

  // BottomNavigationBar 按下處理事件，更新設定當下索引值
  void _onItemClick(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // 頁面主體
      body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: pages[_currentIndex]),
      // 下方的頁面切換欄位
      bottomNavigationBar: SingleChildScrollView(
        child: Container(
            alignment: Alignment.bottomCenter,
            constraints:
                const BoxConstraints.tightFor(width: 200.0, height: 60.0),
            margin: const EdgeInsets.only(left: 10, right: 10, bottom: 25),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
              child: Theme(
                data: Theme.of(context).copyWith(
                  // 設定 BottomNavigationBar 背景色
                  canvasColor: Color.fromRGBO(78, 78, 97, 0.75),
                ),
                child: BottomNavigationBar(
                  selectedItemColor: Colors.white,
                  unselectedItemColor: Colors.grey[400],
                  type: BottomNavigationBarType.fixed,
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  //目前選擇頁索引值
                  currentIndex: _currentIndex,
                  //BottomNavigationBar 按下處理事件
                  onTap: _onItemClick,
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: '首頁',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.apps),
                      label: 'APP',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.date_range),
                      label: '日曆',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.density_medium),
                      label: '設定',
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
