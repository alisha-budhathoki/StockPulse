import 'package:flutter/material.dart';
import 'package:stock_pulse/ui/ui.dart';

class TextStyles {
  TextStyles._();
  static final _base = TextStyle(
    color: Palette.dark.shade5,
    fontFamily: FontNames.proximaNova,
  );

  static final h9 = _base.copyWith(
    fontSize: 48.0,
    fontWeight: FontWeight.bold,
  );

  static final h8 = _base.copyWith(
    fontSize: 36.0,
    fontWeight: FontWeight.w300,
  );

  static final h7 = _base.copyWith(
    fontSize: 24.0,
    fontWeight: FontWeight.w300,
  );

  static final h6 = _base.copyWith(
    fontSize: 20.0,
    fontWeight: FontWeight.w300,
  );

  static final h5 = _base.copyWith(
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
  );

  static final h4 = _base.copyWith(
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
  );
  static final h3 = _base.copyWith(
    fontSize: 12.0,
    fontWeight: FontWeight.w300,
  );

  static final h2 = _base.copyWith(
    fontSize: 12.0,
    fontWeight: FontWeight.w300,
  );

  static final h1 = _base.copyWith(
    fontSize: 10.0,
    fontWeight: FontWeight.w300,
  );

  static final bodyText3 = _base.copyWith(
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
  );

  static final bodyText2 = _base.copyWith(
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
  );
  static final bodyText1 = _base.copyWith(
    fontSize: 12.0,
    fontWeight: FontWeight.w300,
  );

  static TextStyle withFontSize(double fontSize) =>
      _base.copyWith(fontSize: fontSize);
}
