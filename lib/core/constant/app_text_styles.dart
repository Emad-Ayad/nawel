import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppTextStyles {
  // Heading styles
  static const TextStyle heading1 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const TextStyle heading2 = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const TextStyle heading3 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  // Subtitle styles
  static const TextStyle subtitle1 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Colors.black87,
  );

  static const TextStyle subtitle2 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Colors.black87,
  );

  // Body text styles
  static const TextStyle bodyText1 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: Colors.black87,
  );

  static const TextStyle bodyText2 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: Color(0XFF677294),
  );
  static const TextStyle bodyTextShade = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  // Caption styles
  static const TextStyle caption = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: Colors.grey,
  );

  // Button text styles
  static const TextStyle buttonText = TextStyle(
    fontSize: 18,
    color: Colors.white,
  );

  // Custom styles for specific use cases
  static const TextStyle highlightedText = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.amber,
  );

  static const TextStyle errorText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: Colors.red,
  );
}
