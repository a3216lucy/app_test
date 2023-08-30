import 'package:app_test/router.dart';
import 'package:app_test/src/components/play_lists.dart';
import 'package:app_test/src/constants/route_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

/// 詳細頁
class Details extends StatefulWidget {
  const Details({
    Key? key,
    this.index,
  }) : super(key: key);
  final int? index;

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Song Details'),
        ),
        body: Consumer(builder: (context, ref, child) {
          final songList = ref.watch(songDataProvider).reversed.toList();
          return Center(
            child: SizedBox(
              width: 330,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Image.network(songList[0].album.images[0].url),
                  const SizedBox(
                    height: 30,
                  ),
                  ListTile(
                    leading: const Icon(Icons.album),
                    title: Text(songList[0].album.name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    trailing: IconButton(
                        icon: const Icon(Icons.link_rounded),
                        onPressed: () => {
                              GoRouter.of(context).push(ScreenPaths.kkboxPage(),
                                  extra: FamilyUrl(url: songList[0].album.url))
                            }),
                  ),
                  ListTile(
                    leading: const Icon(Icons.tiktok),
                    title: Text(songList[0].name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.white.withOpacity(0.8))),
                    trailing: IconButton(
                      icon: const Icon(Icons.favorite_rounded),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                      style: TextStyle(color: Colors.white.withOpacity(0.6)),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
