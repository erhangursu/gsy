import 'package:flutter/material.dart';
import 'package:gsy/common/audioPlayer.dart';

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

class _MyPlayListState extends State<MyPlayList> {
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
  }
}
