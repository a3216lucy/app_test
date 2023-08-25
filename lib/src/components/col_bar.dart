import 'package:app_test/src/constants/route_path.dart';
import 'package:app_test/src/models/search.dart';
import 'package:app_test/src/services/api/kkbox_service.dart';
import 'package:app_test/src/widgets/large_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// 直條按鈕（三個一組）
class ColBar extends StatelessWidget {
  const ColBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: KKBOXService().search(),
        builder: (context, snapshot) {
          List<Datum> tracksData = snapshot.data?.tracks.data ?? [];
          // 若有資料
          if (snapshot.hasData) {
            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: ListView.separated(
                primary: false,
                shrinkWrap: true,
                itemCount: tracksData.length,
                itemBuilder: (context, index) {
                  return LargeButton(
                      url: tracksData[index].album.images[0].url,
                      text: tracksData[index].name,
                      releaseDate: tracksData[index].album.release_date,
                      onPressed: () => GoRouter.of(context).push(
                          ScreenPaths.detailPage(
                              index: tracksData[index].hashCode)));
                },
                //分割器
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 10);
                },
              ),
            );
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
