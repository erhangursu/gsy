// import 'dart:async';
// import 'dart:io';

import 'package:fileaudioplayer/fileaudioplayer.dart';
import 'package:flutter/material.dart';
import 'package:gsy/common/audioPlayer.dart';
// import 'package:flutter/services.dart';
// import 'package:path_provider/path_provider.dart';

class MyPlayList extends StatefulWidget {
  final String musicImg;
  final String musicLink;
  final String musicTitle;
  const MyPlayList(
      {Key key,
      @required this.musicImg,
      @required this.musicLink,
      @required this.musicTitle})
      : super(key: key);

  @override
  _MyPlayListState createState() => _MyPlayListState();
}

// AssetImage("assets/img/musicPlay1.gif"),
class _MyPlayListState extends State<MyPlayList> {
  FileAudioPlayer player = new FileAudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                image: AssetImage("assets/img/music.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          title: Text(
            widget.musicTitle,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          dense: true,
          //selected: true,
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => MyAudioPlay(
                  playLink: widget.musicLink,
                  playImg: widget.musicImg,
                ),
              ),
            );
          },
          trailing: Container(
            height: 50,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                image: AssetImage("assets/img/musicPlay1.gif"),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        SizedBox(height: 15),
      ],
    );
    // return Center(
    //   child: ListTile(

    //     Padding(
    //       padding: const EdgeInsets.all(8.0),
    //       child: Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //         children: [
    //           InkWell(
    //             onTap: () {
    //               start();
    //             },
    //             child: Icon(Icons.play_arrow,
    //                 size: 50), //PlayerButton(imgLink: "assets/img/play.png"),
    //           ),
    //           InkWell(
    //             onTap: () {
    //               stop();
    //             },
    //             child: Icon(Icons.stop,
    //                 size: 50), //PlayerButton(imgLink: "assets/img/stop.png"),
    //           ),
    //           InkWell(
    //             onTap: () {
    //               pause();
    //             },
    //             child: Icon(Icons.pause,
    //                 size: 50), //PlayerButton(imgLink: "assets/img/pause.png"),
    //           ),
    //           InkWell(
    //             onTap: () {
    //               resume();
    //             },
    //             child: Icon(Icons.skip_next,
    //                 size: 50), //PlayerButton(imgLink: "assets/img/next.png"),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}

//   Future<void> start() async {
//     final ByteData data = await rootBundle.load(widget.musicLink);
//     Directory tempDir = await getApplicationDocumentsDirectory();
//     File tempFile = File('${tempDir.path}/' + widget.musicTitle);
//     await tempFile.writeAsBytes(data.buffer.asUint8List(), flush: true);
//     String mp3Uri = tempFile.uri.toString();

//     print("start");

//     await player.start(mp3Uri);

//     print("end");
//   }

//   Future<void> stop() async {
//     await player.stop();
//   }

//   Future<void> pause() async {
//     await player.pause();
//   }

//   Future<void> resume() async {
//     await player.resume();
//   }
// }
/*
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
*/
