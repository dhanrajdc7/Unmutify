import 'package:flutter/material.dart';

class EmojifyView extends StatefulWidget {
  const EmojifyView({Key? key}) : super(key: key);

  @override
  _EmojifyViewState createState() => _EmojifyViewState();
}

class _EmojifyViewState extends State<EmojifyView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Emoji"),
    );
  }
}
