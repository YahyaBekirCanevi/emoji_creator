import 'package:emoji_creator/screens/create/index.dart';
import 'package:emoji_creator/screens/gallery/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MainScreen extends HookWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var navbarIndex = useState(0);

    getBody(int index) {
      return switch (index) {
        0 => const GalleryScreen(),
        1 => const CreateScreen(),
        _ => const SizedBox(),
      };
    }

    return Scaffold(
      backgroundColor: Colors.indigo.shade100.withOpacity(.6),
      appBar: AppBar(
        title: const Text("Sticker Creator"),
        centerTitle: true,
      ),
      body: getBody(navbarIndex.value),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: const IconThemeData(size: 30),
        currentIndex: navbarIndex.value,
        onTap: (index) => navbarIndex.value = index,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.photo_library),
            label: 'Gallery',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.create),
            label: 'Create Emoji',
          ),
        ],
      ),
    );
  }
}
