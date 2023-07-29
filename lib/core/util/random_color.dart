import 'dart:math';
import 'dart:ui';

Random _random = Random();
Color getRandomColor() {
  int red = _random.nextInt(256); // Random red value (0 to 255)
  int green = _random.nextInt(256); // Random green value (0 to 255)
  int blue = _random.nextInt(256); // Random blue value (0 to 255)
  // Return the color with full opacity (alpha = 255)
  return Color.fromARGB(255, red, green, blue);
}
