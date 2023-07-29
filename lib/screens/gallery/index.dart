import 'package:emoji_creator/core/components/card_xt.dart';
import 'package:emoji_creator/core/mock/gallery_list.dart';
import 'package:emoji_creator/core/util/sizedbox_extension.dart';
import 'package:emoji_creator/domain/model/gallery_item.dart';
import 'package:flutter/material.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<GalleryItem> galleryList = generateGalleryListMock();

    return ListView.separated(
      itemCount: galleryList.length,
      itemBuilder: (_, i) {
        GalleryItem galleryItem = galleryList[i];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Text(galleryItem.title),
            ),
            ...List.generate(
              galleryItem.stickerPackList.length,
              (index) => CardXt(
                child: _StickerList(galleryItem.stickerPackList[index]),
              ),
            ),
          ],
        );
      },
      separatorBuilder: (_, i) => 20.height,
    );
  }
}

class _StickerList extends StatelessWidget {
  final StickerPack pack;
  const _StickerList(this.pack);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: Row(
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: pack.values.length, //Random().nextInt(5) + 5,
              itemBuilder: (_, i) => Container(
                width: 64,
                margin: const EdgeInsets.only(right: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: pack.values[i],
                ),
              ),
            ),
          ),
          const SizedBox.square(
            dimension: 80,
            child: Center(
              child: Icon(
                Icons.keyboard_arrow_right,
                size: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
