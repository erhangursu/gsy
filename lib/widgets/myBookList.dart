import 'package:fileaudioplayer/fileaudioplayer.dart';
import 'package:flutter/material.dart';
import 'package:gsy/common/audioPlayer.dart';

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
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => MyAudioPlay(
                    playLink: widget.kitapLink,
                    playImg: widget.kitapImg,
                  ),
                ),
              );
            },
            child: Container(
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(widget.kitapImg),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      child: Text(
                        widget.baslik,
                        style: listTextStyle,
                      ),
                    ),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/img/play.png"),
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
