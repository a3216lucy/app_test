import 'package:app_test/src/components/play_lists.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlaybackLists extends StatelessWidget {
  const PlaybackLists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        // 通過 context.read 獲取數據
        final songList = ref.watch(songDataProvider);

        // 根據 songList 的內容構建 UI
        return ListView.builder(
          itemCount: songList.length,
          itemBuilder: (context, index) {
            final song = songList[index];
            return ListTile(
              title: Text(song.name),
              subtitle: Text(song.album.name),
            );
          },
        );
      },
    );
  }
}
