import 'dart:async';
import 'dart:io';

import 'package:fileaudioplayer/fileaudioplayer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

class MyPlaylist extends StatefulWidget {
  final String baslik;
  final String musicLink;
  final String musicTitle;
  const MyPlaylist({
    Key key,
    @required this.baslik,
    this.musicLink,
    this.musicTitle,
  }) : super(key: key);

  @override
  _MyPlaylistState createState() => _MyPlaylistState();
}

class _MyPlaylistState extends State<MyPlaylist> {
  FileAudioPlayer player = new FileAudioPlayer();

  @override
  Widget build(BuildContext context) {
    TextStyle listTextStyle =
        TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
    return Row(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            image: DecorationImage(
              image: AssetImage("assets/img/cd.png"),
            ),
          ),
        ),
        Expanded(
          child: Container(
            //color: Colors.blue,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.baslik,
                  style: listTextStyle,
                ),
                SizedBox(height: 5),
                Column(
                  children: [],
                ),
                SizedBox(height: 5),
                Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buildInkWell(),
                      InkWell(
                        onTap: () {
                          stop();
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                              image: AssetImage("assets/img/stop.png"),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          pause();
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                              image: AssetImage("assets/img/pause.png"),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          resume();
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                              image: AssetImage("assets/img/next.png"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
    // Material(
    //   child: Column(
    //     children: [
    //       Row(
    //         children: [
    //           Container(
    //             height: 100,
    //             width: 100,
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(100),
    //               image: DecorationImage(
    //                 image: AssetImage("assets/img/cd.png"),
    //               ),
    //             ),
    //           ),
    //           Column(
    //             children: [
    //               Text(
    //                 widget.baslik,
    //                 style: listTextStyle,
    //               ),
    //               SizedBox(height: 5),
    //               Column(
    //                 children: [],
    //               ),
    //             ],
    //           ),
    //         ],
    //       ),
    //     ],
    //   ),
    // );
  }

  InkWell buildInkWell() {
    return InkWell(
      onTap: () {
        start();
      },
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          image: DecorationImage(
            image: AssetImage("assets/img/play.png"),
          ),
        ),
      ),
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
