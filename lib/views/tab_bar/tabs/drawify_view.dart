import 'package:flutter/material.dart';

class DrawifyView extends StatefulWidget {
  const DrawifyView({Key? key}) : super(key: key);

  @override
  _DrawifyViewState createState() => _DrawifyViewState();
}

class _DrawifyViewState extends State<DrawifyView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Draw"),
    );
  }
}
