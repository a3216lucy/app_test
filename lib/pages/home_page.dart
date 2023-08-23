import 'package:app_test/components/col_bar.dart';
import 'package:app_test/components/row_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Tab> myTabs = <Tab>[
    const Tab(text: 'Your subscriptions'),
    const Tab(text: 'Upcoming bills'),
  ];

  @override
  Widget build(BuildContext context) {
    return const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 70,
          ),
          RowBar(),
          SizedBox(
            height: 70,
          ),
          ColBar(),
        ]);
  }
  //   return DefaultTabController(
  //       length: myTabs.length,
  //       child: Expanded(
  //         child: Column(children: <Widget>[
  //           AppBar(
  //             backgroundColor: Colors.blueGrey,
  //             title: TabBar(
  //               tabs: myTabs,
  //               isScrollable: true,
  //               indicatorColor: Colors.white,
  //               labelColor: Colors.white,
  //             ),
  //           ),
  //           Expanded(
  //             child: TabBarView(
  //                 children: myTabs
  //                     .map((Tab tab) => const Center(child: ColBar()))
  //                     .toList()),
  //           ),
  //         ]),
  //       ));
  // }
}
