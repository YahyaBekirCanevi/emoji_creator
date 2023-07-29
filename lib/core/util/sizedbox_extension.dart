import 'package:flutter/material.dart';

extension SizedBoxExtenssion on num {
  SizedBox get height => SizedBox(height: toDouble());
  SizedBox get width => SizedBox(width: toDouble());
  SizedBox get square => SizedBox.square(dimension: toDouble());
}
