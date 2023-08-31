import 'package:app_test/src/widgets/custom_list_tile.dart';
import 'package:app_test/src/widgets/single_section.dart';
import 'package:flutter/material.dart';

/// 設定頁
class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    // 初始值為 false
    bool switchValue = false;
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Settings',
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(5),
          child: ListView(
            children: [
              // 最上方的個人資訊
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage("assets/images/avatar.png"),
                      ),
                      const SizedBox(height: 10),
                      const Text("John Doe",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold)),
                      const Text("j.doe@gmail.com",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.normal)),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white24,
                            elevation: 2.0,
                            textStyle: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500)),
                        onPressed: () {},
                        child: const Text('Edit profile',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ),
                      const SizedBox(height: 15),
                    ],
                  )),
              // 項目列表
              SingleSection(
                title: "General",
                children: [
                  const CustomListTile(
                    title: "Security",
                    icon: Icons.safety_check,
                    trailing: Icon(Icons.arrow_forward),
                  ),
                  CustomListTile(
                      title: "iCloud Sync",
                      icon: Icons.cloud_upload,
                      trailing: Switch(
                        value: switchValue,
                        onChanged: (bool newValue) {
                          setState(() {
                            switchValue = newValue;
                          });
                        },
                      )),
                ],
              ),
              const SingleSection(
                title: "My subscriptions",
                children: [
                  CustomListTile(
                    title: "Sorting",
                    icon: Icons.sort,
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  CustomListTile(
                      title: "Summary",
                      icon: Icons.pie_chart,
                      trailing: Icon(Icons.keyboard_arrow_right)),
                  CustomListTile(
                      title: "Default currency",
                      icon: Icons.credit_card,
                      trailing: Icon(Icons.keyboard_arrow_right)),
                ],
              ),
              const SingleSection(
                title: "Appearance",
                children: [
                  CustomListTile(
                      title: "App icon",
                      icon: Icons.check_box_outline_blank,
                      trailing: Icon(Icons.keyboard_arrow_right)),
                  CustomListTile(
                      title: "Theme",
                      icon: Icons.sunny,
                      trailing: Icon(Icons.keyboard_arrow_right)),
                ],
              ),
              const SingleSection(
                title: "More Settings",
                children: [
                  CustomListTile(
                      title: "Help & Feedback",
                      icon: Icons.help_outline_rounded,
                      trailing: Icon(Icons.keyboard_arrow_right)),
                  CustomListTile(
                      title: "About",
                      icon: Icons.info_outline_rounded,
                      trailing: Icon(Icons.keyboard_arrow_right)),
                  CustomListTile(
                      title: "Sign out",
                      icon: Icons.exit_to_app_rounded,
                      trailing: Icon(Icons.keyboard_arrow_right)),
                ],
              ),
            ],
          ),
        ));
  }
}
