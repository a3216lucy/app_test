import 'package:app_test/src/components/col_bar.dart';
import 'package:app_test/src/components/row_bar.dart';
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
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 200,
          title: const RowBar(),
        ),
        body: const ColBar());
    // SingleChildScrollView(
    //     physics: const BouncingScrollPhysics(),
    //     child: ListView(
    //       primary: false,
    //       shrinkWrap: true,
    //       children: <Widget>[
    //         for (int i = 0; i < 16; i++)
    //           Column(
    //             children: [
    //               ListTile(
    //                 leading: const CircleAvatar(child: Text('A')),
    //                 title: Text(i.toString()),
    //                 subtitle: const Text('Supporting text'),
    //                 trailing: const Icon(Icons.favorite_rounded),
    //                 onTap: () => GoRouter.of(context)
    //                     .push(ScreenPaths.detailPage(index: 1)),
    //               ),
    //               const Divider(height: 0),
    //             ],
    //           )
    //       ],
    //     )));
  }
}
