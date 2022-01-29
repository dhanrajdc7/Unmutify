import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unmutify/views/tab_bar/tabs/emojify_view.dart';
import 'package:unmutify/views/tab_bar/tabs/settings_view.dart';
import 'package:unmutify/views/tab_bar/tabs/textify_view.dart';
import 'package:mdi/mdi.dart';

class TabView extends StatefulWidget {
  const TabView({Key? key}) : super(key: key);

  @override
  State<TabView> createState() => _TabViewState();
}

class _TabViewState extends State<TabView> {

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Mdi.stickerEmoji),
            label: 'Emojify',
          ),
          BottomNavigationBarItem(
            icon: Icon(Mdi.textToSpeech),
            label: 'Textify',
          ),
          BottomNavigationBarItem(
            icon: Icon(Mdi.cogOutline),
            label: 'Settings',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return EmojifyView();
          case 1:
            return TextifyView();
          case 2:
            return SettingsView();
          default:
            return EmojifyView();
        }
      },
    );
  }
}
