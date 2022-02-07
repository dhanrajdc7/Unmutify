import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unmutify/utils/themes/theme_provider.dart';
import 'package:unmutify/views/cells/settings_cell.dart';
import 'package:nb_utils/nb_utils.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  _SettingsViewState createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {

    final themeProvider = Provider.of<ThemeProvider>(context);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Settings"),),
        body: Container(
          margin: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  child: Column(
                    children: [
                      SettingsCell(
                        iconData: Icons.star,
                        title: 'Features',
                        rightObj: Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 20,),
                      ).onTap(() {

                      }),
                      SettingsCell(
                        iconData: Icons.dark_mode,
                        title: 'Dark Mode',
                        rightObj: CupertinoSwitch(
                          value: themeProvider.isDarkMode,
                          onChanged: (value) {
                            final provider = Provider.of<ThemeProvider>(context, listen: false);
                            provider.toggleTheme(value);
                          },
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
