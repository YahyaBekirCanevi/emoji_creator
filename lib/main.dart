import 'package:emoji_creator/screens/main/index.dart';
import 'package:flutter/material.dart';

void main() => runApp(const EmojiCreatorApp());

class EmojiCreatorApp extends StatelessWidget {
  const EmojiCreatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainScreen(),
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
    );
  }
}
