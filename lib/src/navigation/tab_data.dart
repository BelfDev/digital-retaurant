import 'package:flutter/material.dart';

/// A model representing the information from a Tab item.
class TabData {
  final int index;
  final String rootId;
  final String title;
  final IconData icon;
  final MaterialColor color;

  const TabData(this.index, this.rootId, this.title, this.icon, this.color);
}
