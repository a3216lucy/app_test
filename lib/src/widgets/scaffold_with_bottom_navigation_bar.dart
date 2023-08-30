import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// bottom nav bar
class ScaffoldWithBottomNavigationBar extends StatefulWidget {
  ScaffoldWithBottomNavigationBar(
      {Key? key, required this.child, required this.location})
      : super(key: key);

  String location;
  final Widget child;

  @override
  State<ScaffoldWithBottomNavigationBar> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ScaffoldWithBottomNavigationBar> {
  // 目前選擇頁索引值，預設值為 0
  int _currentIndex = 0;
  // nav icon 顏色
  Color? navColor = Colors.grey[400];

  // 頁面列表
  static const List<MyCustomBottomNavBarItem> tabs = [
    MyCustomBottomNavBarItem(
      icon: Icon(Icons.home),
      activeIcon: Icon(Icons.home),
      initialLocation: '/home',
    ),
    MyCustomBottomNavBarItem(
      icon: Icon(Icons.pages),
      activeIcon: Icon(Icons.pages),
      initialLocation: '/posts',
    ),
    MyCustomBottomNavBarItem(
      icon: Icon(Icons.login),
      activeIcon: Icon(Icons.login),
      initialLocation: '/login',
    ),
    MyCustomBottomNavBarItem(
      icon: Icon(Icons.density_medium),
      activeIcon: Icon(Icons.density_medium),
      initialLocation: '/setting',
    ),
  ];

  // 底部導覽列項目列表
  final List<dynamic> _navItems = [
    NavItem(Icons.home, "首頁"),
    NavItem(Icons.pages, "貼文"),
    NavItem(Icons.login, "登入"),
    NavItem(Icons.density_medium, "設定"),
  ];

  // 點擊觸發跳轉頁面
  void _goOtherTab(BuildContext context, int index) {
    if (index == _currentIndex) return;
    GoRouter router = GoRouter.of(context);
    String location = tabs[index].initialLocation;

    setState(() {
      _currentIndex = index;
      navColor = Colors.white;
    });

    router.go(location);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 頁面主體
      body: SafeArea(child: widget.child),
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
                onPressed: () => _goOtherTab(context, index),
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

class MyCustomBottomNavBarItem extends BottomNavigationBarItem {
  final String initialLocation;

  const MyCustomBottomNavBarItem({
    required this.initialLocation,
    required Widget icon,
    Widget? activeIcon,
    String? label,
  }) : super(icon: icon, label: label, activeIcon: activeIcon ?? icon);
}
