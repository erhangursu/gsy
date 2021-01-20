import 'package:flutter/material.dart';
import 'package:gsy/common/youtubeAc.dart';

class MyVideoList extends StatelessWidget {
  final String imgLink;

  final String videoBaslik;
  final String videoInfo;
  final String videoInfo2;
  final String videoLink;

  const MyVideoList({
    Key key,
    @required this.imgLink,
    @required this.videoBaslik,
    @required this.videoLink,
    this.videoInfo,
    this.videoInfo2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => YoutubeAc(
                      youtubeLink: videoLink,
                      videoBaslik: videoBaslik,
                    ),
                  ),
                );
              },
              child: Container(
                height: 100,
                color: Colors.white.withOpacity(0.4),
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 10),
                    Container(
                      width: 100,
                      height: 70,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(imgLink),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            videoBaslik,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black87,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(
                            videoInfo,
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black54,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            videoInfo2,
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.play_circle_fill_outlined,
                        size: 50, color: Colors.red),
                    SizedBox(width: 10),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
//Image.network('https://img.youtube.com/vi/6cwnBBAVIwE/0.jpg'),
