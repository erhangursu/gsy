import 'package:flutter/material.dart';
import 'package:gsy/pages/pages_01.dart';

Widget gridItem(int position, String yazi) {
  var color = Colors.white;
  var icondata = Icons.add;

  switch (position) {
    case 0:
      color = Colors.red;
      icondata = Icons.import_contacts;
      break;
    case 1:
      color = Colors.deepPurple;
      icondata = Icons.book;
      break;
    case 2:
      color = Colors.cyan;
      icondata = Icons.library_books;
      break;
    case 3:
      color = Colors.amber;
      icondata = Icons.access_time;
      break;
    case 4:
      color = Colors.teal[800];
      icondata = Icons.engineering;
      break;
    case 5:
      color = Colors.blueGrey;
      icondata = Icons.filter_b_and_w;
      break;
    case 6:
      color = Colors.blue[900];
      icondata = Icons.local_taxi;
      break;
    case 7:
      color = Colors.orange;
      icondata = Icons.library_music;
      break;
    case 8:
      color = Colors.pinkAccent;
      icondata = Icons.music_note;
      break;
    case 9:
      color = Colors.brown;
      icondata = Icons.wc;
      break;
    case 10:
      color = Colors.purple;
      icondata = Icons.self_improvement;
      break;
  }

  return Builder(builder: (context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10, bottom: 5, top: 5),
      child: Card(
        elevation: 10,
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          //side: BorderSide(color: Colors.white),
        ),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Page01(
                  baslik: yazi,
                ),
              ),
            );
          },
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  icondata,
                  size: 40,
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    yazi,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  });
}
