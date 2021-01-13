import 'package:flutter/material.dart';
import 'package:gsy/common/sayfaAc.dart';

Widget gridItem(int position, String yazi) {
  var color = Colors.white;
  var icondata = Icons.add;

  switch (position) {
    case 1:
      color = Colors.red.withOpacity(0.8);
      icondata = Icons.import_contacts;
      break;
    case 2:
      color = Colors.deepPurple.withOpacity(0.8);
      icondata = Icons.book;
      break;
    case 3:
      color = Colors.cyan.withOpacity(0.8);
      icondata = Icons.library_books;
      break;
    case 4:
      color = Colors.amber[800].withOpacity(0.8);
      icondata = Icons.access_time;
      break;
    case 5:
      color = Colors.teal[800].withOpacity(0.8);
      icondata = Icons.engineering;
      break;
    case 6:
      color = Colors.blue[900].withOpacity(0.8);
      icondata = Icons.local_taxi;
      break;
    case 7:
      color = Colors.purple.withOpacity(0.8);
      icondata = Icons.music_note;
      break;
    case 8:
      color = Colors.lime[900].withOpacity(0.8);
      icondata = Icons.library_music;
      break;
    case 9:
      color = Colors.orangeAccent.withOpacity(0.8);
      icondata = Icons.wc;
      break;
    case 10:
      color = Colors.pinkAccent.withOpacity(0.8);
      icondata = Icons.self_improvement;
      break;
    case 11:
      color = Colors.blueGrey.withOpacity(0.8);
      icondata = Icons.filter_b_and_w;
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
            sayfaAc(position, context);
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
