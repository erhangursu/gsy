import 'dart:async';
import 'dart:io';

import 'package:fileaudioplayer/fileaudioplayer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

class MyBookList extends StatefulWidget {
  final String baslik;
  final String kitapImg;
  final String kitapLink;
  final String kitapTitle;
  const MyBookList({
    Key key,
    @required this.baslik,
    @required this.kitapLink,
    @required this.kitapTitle,
    @required this.kitapImg,
  }) : super(key: key);

  @override
  _MyBookListState createState() => _MyBookListState();
}

class _MyBookListState extends State<MyBookList> {
  FileAudioPlayer player = new FileAudioPlayer();
  @override
  Widget build(BuildContext context) {
    TextStyle listTextStyle =
        TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(widget.kitapImg),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    child: Text(
                      widget.baslik,
                      style: listTextStyle,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    start();
                  },
                  child: PlayerButton(imgLink: "assets/img/play.png"),
                ),
                SizedBox(width: 30),
                InkWell(
                  onTap: () {
                    stop();
                  },
                  child: PlayerButton(imgLink: "assets/img/stop.png"),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Future<void> start() async {
    final ByteData data = await rootBundle.load(widget.kitapLink);
    Directory tempDir = await getApplicationDocumentsDirectory();
    File tempFile = File('${tempDir.path}/' + widget.kitapTitle);
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
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        image: DecorationImage(
          image: AssetImage(imgLink),
        ),
      ),
    );
  }
}
