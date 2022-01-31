import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:text_to_speech/text_to_speech.dart';

class TextifyView extends StatefulWidget {
  const TextifyView({Key? key}) : super(key: key);

  @override
  _TextifyViewState createState() => _TextifyViewState();
}

class _TextifyViewState extends State<TextifyView> with SingleTickerProviderStateMixin {

  /// Text to Speech
  TextToSpeech tts = TextToSpeech();


  /// Text
  String str = "";
  final TextEditingController controller = TextEditingController();

  /// Animated Icon
  late AnimationController _animationController;
  bool _isPlay = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 500),);

  }

  void setupTts() {

  }

  Future getVoices() async {
    List<String>? voices = await tts.getVoiceByLang('en-US');
    print(voices);
  }

  @override
  void dispose() {
    _animationController.dispose();
    tts.stop();
    super.dispose();
  }

  void animate() {
    setState(() {
      if (_isPlay == false) {
        _animationController.forward();
        _isPlay = true;
      } else {
        _animationController.reverse();
        _isPlay = false;
      }
    });
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
                 controller: controller,
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
                   str = value;
                 },
               ).paddingSymmetric(vertical: 16, horizontal: 8),
              SizedBox(height: 8,),
              GestureDetector(
                onTap: animate,
                child: AnimatedIcon(
                  size: 48,
                  color: Colors.deepPurpleAccent,
                  icon: AnimatedIcons.play_pause,
                  progress: _animationController,
                ),
              ).paddingSymmetric(vertical: 16)
            ],
          ),
        ),
      ),
    );
  }
}
