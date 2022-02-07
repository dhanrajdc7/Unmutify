import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:unmutify/emojis/category.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:unmutify/utils/player_state.dart';
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

  /// Text to Speech
  final flutterTts = FlutterTts();
  final String defaultLanguage = 'en-US';

  dynamic languages;
  late String language;

  double volume = 0.5;
  double pitch = 1.0;
  double rate = 0.5;

  /// Player State
  PlayerState playerState = PlayerState.stopped;

  @override
  void initState() {
    super.initState();
    initTts();
  }

  @override
  void dispose() {
    flutterTts.stop();
    super.dispose();
  }

  void initTts() {
    /// Start
    flutterTts.setStartHandler(() {
      setState(() {
        playerState = PlayerState.playing;
      });
    });

    flutterTts.setCompletionHandler(() {
      setState(() {
        playerState = PlayerState.stopped;
        hideSnakbar();
      });
    });

    flutterTts.setErrorHandler((err) {
      setState(() {
        print("error occurred: " + err);
        showSnakbar("Something went wrong");
        playerState = PlayerState.stopped;
        hideSnakbar();
      });
    });
  }

  Future _speak(String txt) async {
    await flutterTts.setVolume(volume);
    await flutterTts.setSpeechRate(rate);
    await flutterTts.setPitch(pitch);

    if (txt.isNotEmpty) {
      var result = await flutterTts.speak(txt);
    }
  }

  void showSnakbar(String msg) {
    var snackBar = SnackBar(
      content: Text(
        msg,
        textAlign: TextAlign.center,
      ),
      behavior: SnackBarBehavior.floating,
      elevation: 10,
      backgroundColor: Colors.deepPurpleAccent,
      onVisible: (){
        _speak(msg);
      },
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void hideSnakbar() {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
  }

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
                            var emoji = sub.items[index];
                            return EmojiCell(
                                emoji: emoji
                            ).onTap((){
                              if (playerState != PlayerState.playing) {
                                showSnakbar(emoji.info);
                              }
                            });
                          }
                      ),
                      SizedBox(height: 16,)
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
