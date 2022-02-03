import 'package:flutter/material.dart';
import 'dart:io' show Platform;
import 'package:mdi/mdi.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:unmutify/utils/player_state.dart';
import 'package:unmutify/views/buttons/control_button.dart';
import 'package:unmutify/views/widgets/shake_widget.dart';

class TextifyView extends StatefulWidget {
  const TextifyView({Key? key}) : super(key: key);

  @override
  _TextifyViewState createState() => _TextifyViewState();
}

class _TextifyViewState extends State<TextifyView> {

  /// Text to Speech
  final flutterTts = FlutterTts();
  final String defaultLanguage = 'en-US';

  dynamic languages;
  late String language;

  double volume = 0.5;
  double pitch = 1.0;
  double rate = 0.5;

  /// Text
  String text = '';
  final myController = TextEditingController();

  /// Player State
  PlayerState playerState = PlayerState.stopped;

  /// Shake
  final playShakeKey = GlobalKey<ShakeWidgetState>();
  final pauseShakeKey = GlobalKey<ShakeWidgetState>();
  final stopShakeKey = GlobalKey<ShakeWidgetState>();
  final clearShakeKey = GlobalKey<ShakeWidgetState>();

  /// Progress Indicator
  var currentValue = 0.0;
  var wordCount = 0;
  var currentWord = 0;

  @override
  void initState() {
    super.initState();
    initTts();
    _getLanguages();
  }

  @override
  void dispose() {
    flutterTts.stop();
    myController.dispose();
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
        currentWord = 0;
        currentValue = 0.0;
      });
    });

    flutterTts.setPauseHandler(() {
      setState(() {
        playerState = PlayerState.paused;
      });
    });

    flutterTts.setCancelHandler(() {
      setState(() {
        playerState = PlayerState.stopped;
        currentWord = 0;
        currentValue = 0.0;
      });
    });
    
    flutterTts.setErrorHandler((err) {
      setState(() {
        print("error occurred: " + err);
        showSnakbar("Something went wrong");
        playerState = PlayerState.stopped;
        currentWord = 0;
        currentValue = 0.0;
      });
    });

    flutterTts.setProgressHandler((txt, start, end, word) {
      print("Text: $txt, start: $start, end: $end, word: $word");

      setState(() {
        currentValue += 1/wordCount;
      });
    });
  }

  Future _getLanguages() async {
    languages = await flutterTts.getLanguages;
    print("pretty print $languages");
    if (languages != null) setState(() => languages);
  }

  void showSnakbar(String msg) {
    var snackBar = SnackBar(content: Text(msg));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  Future _speak() async {
    await flutterTts.setVolume(volume);
    await flutterTts.setSpeechRate(rate);
    await flutterTts.setPitch(pitch);

    if (text.isNotEmpty) {
      var result = await flutterTts.speak(text);
      //if (result == 1) setState(() => playerState = PlayerState.playing);
    }
  }

  Future _pause() async {

    if (Platform.isAndroid) {
      // Pause is NOT supported for Android
      showSnakbar("Pause Feature is currently not available for Android.");
    } else {
      var result = await flutterTts.pause();
      //if (result == 1) setState(() => playerState = PlayerState.paused);
    }
  }

  Future _stop() async {
    var result = await flutterTts.stop();
    //if (result == 1) setState(() => playerState = PlayerState.stopped);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Text to Speech"), centerTitle: true,),
        body: Container(
          margin: EdgeInsets.all(16),
          child: Column(
            children: [
               TextField(
                 minLines: 5,
                 maxLines: 10,
                 controller: myController,
                 decoration: InputDecoration(
                   contentPadding: EdgeInsets.all(16),
                   hintText: 'Type something here',
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(12)
                   ),
                   focusColor: Colors.blue
                 ),
                 cursorColor: Colors.blue,
                 onChanged: (value) {
                   setState(() {
                     text = value;
                     wordCount = text.trim().split(' ').length;
                   });
                 },
               ).paddingSymmetric(vertical: 16, horizontal: 8),
              SizedBox(height: 8,),
              Container(
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                child: LinearPercentIndicator(
                  lineHeight: 20.0,
                  percent: currentValue,
                  progressColor: Colors.blue[400],
                  backgroundColor: Colors.grey[300],
                  barRadius: Radius.circular(12),
                ),
              ),
              SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ShakeWidget(
                      key: playShakeKey,
                      shakeCount: 3,
                      shakeOffset: 5,
                      shakeDuration: Duration(milliseconds: 500),
                      child: ControlButton(
                        title: "Play",
                        icon: Mdi.play,
                        clr: Colors.deepPurpleAccent.withOpacity(playerState == PlayerState.playing ? 0.7 : 1.0),
                        onPressed: (){
                          if (playerState != PlayerState.playing && text != '') {
                            _speak();
                          } else {
                            playShakeKey.currentState?.shake();
                          }
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: ShakeWidget(
                      key: pauseShakeKey,
                      shakeCount: 3,
                      shakeOffset: 5,
                      shakeDuration: Duration(milliseconds: 500),
                      child: ControlButton(
                        title: "Pause",
                        icon: Mdi.pause,
                        clr: Colors.deepOrangeAccent.withOpacity(playerState != PlayerState.playing ? 0.7 : 1.0),
                        onPressed: (){
                          if (playerState == PlayerState.playing) {
                            _pause();
                          } else {
                            pauseShakeKey.currentState?.shake();
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ShakeWidget(
                      key: stopShakeKey,
                      shakeCount: 3,
                      shakeOffset: 5,
                      shakeDuration: Duration(milliseconds: 500),
                      child: ControlButton(
                        title: "Stop",
                        icon: Mdi.stop,
                        clr: Colors.redAccent.withOpacity(playerState != PlayerState.playing ? 0.7 : 1.0),
                        onPressed: (){
                          if (playerState == PlayerState.playing) {
                            _stop();
                          } else {
                            stopShakeKey.currentState?.shake();
                          }
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: ShakeWidget(
                      key: clearShakeKey,
                      shakeCount: 3,
                      shakeOffset: 5,
                      shakeDuration: Duration(milliseconds: 500),
                      child: ControlButton(
                        title: "Clear",
                        icon: Mdi.close,
                        clr: Colors.pinkAccent.withOpacity(text == '' ? 0.7 : 1.0),
                        onPressed: (){
                          setState(() {
                            if (text != '') {
                              myController.text = '';
                              text = '';
                            } else {
                              clearShakeKey.currentState?.shake();
                            }
                          });
                        },
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
