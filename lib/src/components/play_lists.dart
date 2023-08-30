import 'package:app_test/src/constants/route_path.dart';
import 'package:app_test/src/models/search.dart';
import 'package:app_test/src/services/api/kkbox_service.dart';
import 'package:app_test/src/widgets/large_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

// 創建一個 Provider，用於存儲歌曲清單資料
final songDataProvider = Provider<List<Datum>>((ref) {
  // 初始為空陣列
  return [];
});

/// 播放清單
class PlayLists extends StatefulWidget {
  const PlayLists({Key? key}) : super(key: key);

  @override
  State<PlayLists> createState() => _PlayListsState();
}

class _PlayListsState extends State<PlayLists> {
  /// 播放存取清單
  List<Datum> songList = [];
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: KKBOXService().search(),
        builder: (context, snapshot) {
          // 若有資料
          if (snapshot.hasData) {
            List<Datum> tracksData = snapshot.data?.tracks.data ?? [];

            return Consumer(builder: (context, ref, child) {
              final songList = ref.watch(songDataProvider);

              return SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  constraints: const BoxConstraints(maxWidth: 332),
                  child: ListView.separated(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: tracksData.length,
                    itemBuilder: (context, index) {
                      final track = tracksData[index];

                      return LargeButton(
                        url: track.album.images[0].url,
                        text: track.name,
                        releaseDate: track.album.release_date,
                        onPressed: () {
                          songList.add(track);
                          ref.read(songDataProvider).add(track);

                          // 執行導航導轉
                          GoRouter.of(context).push(ScreenPaths.detailPage(
                              index: tracksData[index].duration));
                        },
                      );
                    },
                    //分割器
                    separatorBuilder: (context, index) {
                      return const SizedBox(height: 10);
                    },
                  ),
                ),
              );
            });
          }
          // 若有錯誤
          else if (snapshot.hasError) {
            debugPrint('error');
            return Container();
          }
          // 當資料還未載入時，顯示轉圈圈 loading
          return const Center(child: CircularProgressIndicator());
        });
  }
}
