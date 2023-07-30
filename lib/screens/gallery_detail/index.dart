import 'package:emoji_creator/domain/model/gallery_item.dart';
import 'package:flutter/material.dart';

class GalleryDetailScreen extends StatelessWidget {
  static MaterialPageRoute getRoute(StickerPack _pack) => MaterialPageRoute(
        builder: (context) => GalleryDetailScreen(pack: _pack),
      );

  final StickerPack pack;
  const GalleryDetailScreen({super.key, required this.pack});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            pinned: true, // Whether the app bar should be pinned at the top
            flexibleSpace: FlexibleSpaceBar(
              title: Text(pack.title),
              background: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.indigo.shade400, Colors.indigo],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
