import 'package:app_test/src/pages/apps.dart';
import 'package:app_test/src/pages/calendar.dart';
import 'package:app_test/src/pages/home_page.dart';
import 'package:app_test/src/pages/setting.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarTool extends StatefulWidget {
  const BottomNavigationBarTool({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarTool> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<BottomNavigationBarTool> {
  // 目前選擇頁索引值，預設值為 0
  int _currentIndex = 0;
  // nav icon 顏色
  Color? navColor = Colors.grey[400];
  // 頁面列表
  final pages = [
    const HomePage(),
    const Apps(),
    const Calendar(),
    const Setting()
  ];
  // 底部導覽列項目列表
  final List<dynamic> _navItems = [
    NavItem(Icons.home, "首頁"),
    NavItem(Icons.apps, "APP"),
    NavItem(Icons.date_range, "日曆"),
    NavItem(Icons.density_medium, "設定"),
  ];

  // BottomNavigationBar 按下處理事件，更新設定當下索引值
  void _onItemClick(int index) {
    setState(() {
      _currentIndex = index;
      navColor = Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 頁面主體
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: pages[_currentIndex],
      ),
      // 下方的頁面切換欄位
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // 懸浮在 BottomAppBar上面的中心圓按鈕
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: const Color.fromRGBO(255, 121, 102, 1),
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        // nav 背景顏色
        color: const Color.fromRGBO(78, 78, 97, 0.75),
        // 陰影
        elevation: 0,
        // 缺口外邊距
        notchMargin: 10,
        shape: const CircularNotchedRectangle(),
        height: 60,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: _navItems.map((item) {
              var index = _navItems.indexOf(item);
              return IconButton(
                onPressed: () => _onItemClick(index),
                icon: Icon(
                  item.icon,
                  color:
                      _currentIndex == index ? Colors.white : Colors.grey[400],
                ),
              );
            }).toList()),
      ),
    );
  }
}

class NavItem {
  IconData icon;
  String title;

  NavItem(this.icon, this.title);
}
