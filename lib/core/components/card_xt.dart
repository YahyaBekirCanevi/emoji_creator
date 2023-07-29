import 'package:flutter/material.dart';

class CardXt extends StatelessWidget {
  final Widget child;

  const CardXt({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(left: 8, right: 8, top: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            offset: Offset(3, 4),
            blurRadius: 1,
            spreadRadius: 1,
            color: Colors.black12,
          ),
        ],
      ),
      child: child,
    );
  }
}
