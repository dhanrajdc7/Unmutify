import 'package:flutter/material.dart';
import 'package:unmutify/emojis/emoji.dart';

class EmojiCell extends StatefulWidget {

  final Emoji emoji;

  const EmojiCell({
    Key? key,
    required this.emoji
  }) : super(key: key);

  @override
  _EmojiCellState createState() => _EmojiCellState();
}

class _EmojiCellState extends State<EmojiCell> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.black12),
          boxShadow: [
            BoxShadow(color: Colors.black26.withOpacity(0.2), blurRadius: 12)
          ]
      ),
      child: Center(
        child: Text(
          widget.emoji.emo,
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
