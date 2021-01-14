import 'dart:async';
import 'dart:io';

import 'package:fileaudioplayer/fileaudioplayer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

class MyPlayList extends StatefulWidget {
  final String baslik;
  final String musicLink;
  final String musicTitle;
  const MyPlayList(
      {Key key,
      @required this.baslik,
      @required this.musicLink,
      @required this.musicTitle})
      : super(key: key);

  @override
  _MyPlayListState createState() => _MyPlayListState();
}

class _MyPlayListState extends State<MyPlayList> {
  FileAudioPlayer player = new FileAudioPlayer();
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: CircleAvatar(
        radius: 20,
        backgroundImage: AssetImage("assets/img/musicPlay1.gif"),
      ),
      title: Text(
        widget.baslik,
        style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
      ),
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  start();
                },
                child: PlayerButton(imgLink: "assets/img/play.png"),
              ),
              InkWell(
                onTap: () {
                  stop();
                },
                child: PlayerButton(imgLink: "assets/img/stop.png"),
              ),
              InkWell(
                onTap: () {
                  pause();
                },
                child: PlayerButton(imgLink: "assets/img/pause.png"),
              ),
              InkWell(
                onTap: () {
                  resume();
                },
                child: PlayerButton(imgLink: "assets/img/next.png"),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Container(
          height: 250,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/img/musicPlayer3.gif"),
              fit: BoxFit.fill,
            ),
          ),
        ),
        SizedBox(height: 10),
      ],
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
      width: 75,
      height: 75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        image: DecorationImage(
          image: AssetImage(imgLink),
        ),
      ),
    );
  }
}
