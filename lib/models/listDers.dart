import 'package:flutter/material.dart';

class Dersler {
  bool isExpanded;
  final String baslik;
  final List<String> icerik = [];
  IconData iconData;

  Dersler(this.baslik);
}
