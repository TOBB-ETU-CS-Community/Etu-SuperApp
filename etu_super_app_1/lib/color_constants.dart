import 'package:flutter/material.dart';

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
      'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}

class ColorConstants {
  static Color mainBlackBlue = hexToColor('#162C42');
  static Color yellowish = hexToColor('#F0B85F');
  static Color lightRed = hexToColor('#E46C66');
  static Color greyWhite = hexToColor('#F7F5FA');
  static Color orangeBrown = hexToColor('#984F07');
  static Color green = hexToColor('#009900');
  static Color purple = hexToColor('#660AC1');
  static Color grey = hexToColor('#B4B4B5');
  static Color darkGreyBG = hexToColor('#E5E7F1');
  static Color nearWhiteBG = hexToColor('#EDEEF2');
  static Color whiteBG = hexToColor('#FBFCFD');
}
