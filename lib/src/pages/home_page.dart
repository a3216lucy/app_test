import 'package:app_test/src/components/play_lists.dart';
import 'package:app_test/src/components/playback_lists.dart';
import 'package:app_test/src/components/row_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 首頁
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  // 分頁控制器
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 180,
          title: const Column(
            children: [
              Text(
                'My Music Library',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 20),
              RowBar(),
            ],
          ),
        ),
        body: Stack(
            alignment: Alignment.bottomCenter,
            fit: StackFit.passthrough,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      width: 328,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        boxShadow: List.filled(
                            2,
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 0.2,
                              blurRadius: 0.2,
                            ),
                            growable: true),
                        borderRadius: BorderRadius.circular(
                          15.0,
                        ),
                      ),
                      child: TabBar(
                        controller: _tabController,
                        isScrollable: false,
                        indicatorPadding: const EdgeInsets.all(7.0),
                        dividerColor: Colors.transparent,
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            20.0,
                          ),
                          color: const Color.fromRGBO(78, 78, 97, 0.2),
                          border: Border.all(
                            color: Colors.white12,
                            width: 0.5,
                          ),
                        ),
                        indicatorSize: TabBarIndicatorSize.tab,
                        labelColor: Colors.white,
                        labelStyle: const TextStyle(
                            fontSize: 13.5, fontWeight: FontWeight.bold),
                        unselectedLabelColor: Colors.grey[700],
                        tabs: const [
                          // first tab，可加 icon property
                          Tab(
                            text: '播放清單',
                          ),

                          // second tab，可加 icon property
                          Tab(
                            text: '播放紀錄',
                          ),
                        ],
                      ),
                    ),
                    // tab bar view
                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          // first tab
                          const Center(
                            child: PlayLists(),
                          ),

                          Consumer(builder: (context, ref, child) {
                            final isNoData =
                                ref.watch(songDataProvider).isEmpty;

                            // second tab
                            return Center(
                              child: isNoData
                                  ? const Text(
                                      '空空如也 ...',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  : const PlaybackLists(),
                            );
                          })
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // 接近 navbar 的地方加陰影
              Container(
                height: 60,
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      // 起始顏色帶有透明度
                      Colors.black.withOpacity(0.1),
                      // 結束顏色帶有透明度
                      Colors.black.withOpacity(1),
                    ],
                  ),
                ),
              ),
            ]));
  }
}
