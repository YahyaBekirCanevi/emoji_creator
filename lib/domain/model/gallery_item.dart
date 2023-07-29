import 'package:flutter/material.dart';

class GalleryItem {
  final String title;
  final List<StickerPack> stickerPackList;

  GalleryItem({
    Key? key,
    required this.title,
    required this.stickerPackList,
  });

  Map<String, dynamic> toJson() => {
        "title": title,
        "stickerPackList": stickerPackList.map((e) => e.toJson()).toList()
      };
}

class StickerPack {
  final String title;
  final String publisher;
  final List<Color> values;

  StickerPack({
    Key? key,
    required this.title,
    required this.publisher,
    required this.values,
  });

  Map<String, String> toJson() => {
        "title": title,
        "publisher": publisher,
        "values": values.toString(),
      };
}
