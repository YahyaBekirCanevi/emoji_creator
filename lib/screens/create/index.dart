import 'package:flutter/material.dart';

class CreateScreen extends StatelessWidget {
  const CreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(child: Text("Helloo")),
        SizedBox(
          height: 120,
          child: Text("aaaaa"),
        ),
      ],
    );
  }
}
