import 'package:emoji_creator/core/components/card_xt.dart';
import 'package:emoji_creator/core/mock/gallery_list.dart';
import 'package:emoji_creator/core/util/sizedbox_extension.dart';
import 'package:emoji_creator/domain/model/gallery_item.dart';
import 'package:emoji_creator/screens/gallery_detail/index.dart';
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
              child: Text(
                galleryItem.title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            ...List.generate(
              galleryItem.stickerPackList.length,
              (index) => CardXt(
                onTap: () => Navigator.of(context).push(
                  GalleryDetailScreen.getRoute(
                    galleryItem.stickerPackList[index],
                  ),
                ),
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
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxHeight: 90,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(pack.title),
              Expanded(child: 1.width),
              const Icon(Icons.keyboard_arrow_right, size: 16),
            ],
          ),
          10.height,
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: pack.values.length, //Random().nextInt(5) + 5,
              itemBuilder: (_, i) => Container(
                margin: const EdgeInsets.only(right: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: pack.values[i],
                ),
                child: 64.square,
              ),
            ),
          ),
          4.height,
        ],
      ),
    );
  }
}
