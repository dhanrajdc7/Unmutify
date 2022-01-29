import 'package:flutter/cupertino.dart';
import 'package:unmutify/views/tab_bar/tab_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'Unmutify',
      home: TabView(),
    );
  }
}
