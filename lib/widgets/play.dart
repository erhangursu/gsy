import 'dart:async';
import 'dart:io';

import 'package:fileaudioplayer/fileaudioplayer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

class Play extends StatefulWidget {
  final String baslik;
  final String musicLink;
  final String musicTitle;
  Play(
      {Key key,
      @required this.baslik,
      @required this.musicLink,
      @required this.musicTitle})
      : super(key: key);

  @override
  _PlayState createState() => _PlayState();
}

class _PlayState extends State<Play> {
  FileAudioPlayer player = new FileAudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("a"),
    );
  }

  Future<void> start() async {
    final ByteData data = await rootBundle.load(widget.musicLink);
    Directory tempDir = await getApplicationDocumentsDirectory();
    File tempFile = File('${tempDir.path}/' + widget.musicTitle);
    await tempFile.writeAsBytes(data.buffer.asUint8List(), flush: true);
    String mp3Uri = tempFile.uri.toString();

    print("start");

    await player.start(mp3Uri);

    print("end");
  }

  Future<void> stop() async {
    await player.stop();
  }

  Future<void> pause() async {
    await player.pause();
  }

  Future<void> resume() async {
    await player.resume();
  }
}

class PlayerButton extends StatelessWidget {
  final String imgLink;
  const PlayerButton({
    Key key,
    this.imgLink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        image: DecorationImage(
          image: AssetImage(imgLink),
        ),
      ),
    );
  }
}
