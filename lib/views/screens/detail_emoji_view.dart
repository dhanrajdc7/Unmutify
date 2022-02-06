import 'package:flutter/material.dart';
import 'package:unmutify/emojis/category.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:unmutify/views/cells/emoji_cell.dart';

class DetailEmojiView extends StatefulWidget {

  final Category category;
  
  const DetailEmojiView({
    Key? key,
    required this.category
  }) : super(key: key);

  @override
  _DetailEmojiViewState createState() => _DetailEmojiViewState();
}

class _DetailEmojiViewState extends State<DetailEmojiView> {

  @override
  Widget build(BuildContext context) {

    final orientation = MediaQuery.of(context).orientation;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text(widget.category.name),),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: List.from(widget.category.items.map((sub) {
                return Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        sub.name,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                        ),
                      ).paddingAll(16),
                      GridView.builder(
                          itemCount: sub.items.length,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: (orientation == Orientation.portrait ? 4 : 6),
                              crossAxisSpacing: 8,
                              mainAxisSpacing: 8
                          ),
                          itemBuilder: (context, index) {
                            return EmojiCell(emoji: sub.items[index]);
                          }
                      )
                    ],
                  ),
                );
              })),
            ),
          ),
        ),
      ),
    );
  }
}
