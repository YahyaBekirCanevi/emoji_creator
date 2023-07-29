import 'dart:math';
import 'dart:ui';

import 'package:emoji_creator/core/util/random_color.dart';
import 'package:emoji_creator/domain/model/gallery_item.dart';

List<GalleryItem> generateGalleryListMock() {
  List<String> packNameList = ["Sad", "Funny"];
  return List.generate(
    packNameList.length,
    (i) => GalleryItem(
      title: "${packNameList[i]} Pack",
      stickerPackList: generateStickerPackList(packNameList[i]),
    ),
  );
}

List<StickerPack> generateStickerPackList(String name) {
  return List.generate(
    Random().nextInt(2) + 2,
    (i) => StickerPack(
      title: "$name Pack $i",
      publisher: "Publisher",
      values: generateColorValues(),
    ),
  );
}

List<Color> generateColorValues() {
  return List.generate(
    Random().nextInt(5) + 4,
    (i) => getRandomColor(),
  );
}
