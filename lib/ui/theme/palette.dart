import 'package:flutter/material.dart';

class Palette {
  Palette._();

  static const LightColor light = LightColor();
  static const DarkColor dark = DarkColor();
  static const transparent = Colors.transparent;

  static const PrimaryColor primary = PrimaryColor();
  static const SecondaryColor secondary = SecondaryColor();
  static const SuccessColor success = SuccessColor();
  static const ErrorColor error = ErrorColor();
  static const WarningColor warning = WarningColor();
  static const InfoColor info = InfoColor();

  static const BackgroundColor background = BackgroundColor();
  static const TextPrimaryColor textPrimary = TextPrimaryColor();
  static const TextSecondaryColor textSecondary = TextSecondaryColor();
  static const TextDisabledColor textDisabled = TextDisabledColor();
}

class DarkColor {
  const DarkColor();
  final Color shade1 = const Color(0xFF070304);
  final Color shade2 = const Color(0xFF090506);
  final Color shade3 = const Color(0xFF0D0B0B);
  final Color shade4 = const Color(0xFF0D0B0B);
  final Color shade5 = const Color(0xFF000000);
}

class LightColor {
  const LightColor();
  final Color shade1 = const Color(0xFF6F6F6F);
  final Color shade2 = const Color(0xFFB7B7B7);
  final Color shade3 = const Color(0xFFE7E7E7);
  final Color shade4 = const Color(0xFFF3F3F3);
  final Color shade5 = const Color(0xFFFFFFFF);
}

class PrimaryColor {
  const PrimaryColor();
  final Color shade1 = const Color(0xFF103F74);
  final Color shade2 = const Color(0xFF1B588C);
  final Color shade3 = const Color(0xFF2B7BAE);
  final Color shade4 = const Color(0xFF3EA2D0);
  final Color shade5 = const Color(0xFF55CCF2);
}

class SecondaryColor {
  const SecondaryColor();
  final Color shade1 = const Color(0xFF74100D);
  final Color shade2 = const Color(0xFF8C2216);
  final Color shade3 = const Color(0xFFAE3A23);
  final Color shade4 = const Color(0xFFD05833);
  final Color shade5 = const Color(0xFFF27A47);
}

class SuccessColor {
  const SuccessColor();
  final Color shade1 = const Color(0xFF0F595A); // Green
  final Color shade2 = const Color(0xFF1A6D66);
  final Color shade3 = const Color(0xFF298876);
  final Color shade4 = const Color(0xFF3BA285);
  final Color shade5 = const Color(0xFF52BD94);
}

class ErrorColor {
  const ErrorColor();
  final Color shade1 = const Color(0xFF7A0E40); // Red
  final Color shade2 = const Color(0xFF931846);
  final Color shade3 = const Color(0xFFB7264F);
  final Color shade4 = const Color(0xFFDB3756);
  final Color shade5 = const Color(0xFFFF4C5E);
}

class WarningColor {
  const WarningColor();
  final Color shade1 = const Color(0xFF7A4B04); // Yellow
  final Color shade2 = const Color(0xFF935F07);
  final Color shade3 = const Color(0xFFB77C0B);
  final Color shade4 = const Color(0xFFDB9B10);
  final Color shade5 = const Color(0xFFFFBD16);
}

class InfoColor {
  const InfoColor();
  final Color shade1 = const Color(0xFF071561); // Blue
  final Color shade2 = const Color(0xFF0D1F76);
  final Color shade3 = const Color(0xFF142D92);
  final Color shade4 = const Color(0xFF1D3EAF);
  final Color shade5 = const Color(0xFF2952CC);
}

class BackgroundColor {
  const BackgroundColor();
  final Color shade1 = const Color(0xFF597FE0); // blue
  final Color shade2 = const Color(0xFF7C9FEF);
  final Color shade3 = const Color(0xFFAAC4F9);
  final Color shade4 = const Color(0xFFD4E2FC);
}

class TextPrimaryColor {
  const TextPrimaryColor();
  final Color shade1 = const Color(0xFF343A40); // Dark Gray
  final Color shade2 = const Color(0xFF2D3238);
  final Color shade3 = const Color(0xFF262A30);
  final Color shade4 = const Color(0xFF202328);
  final Color shade5 = const Color(0xFF191C20);
  final Color shade6 = const Color(0xFF121416);
}

class TextSecondaryColor {
  const TextSecondaryColor();
  final Color shade1 = const Color(0xFF6C757D); // Medium Gray
  final Color shade2 = const Color(0xFF5F676E);
  final Color shade3 = const Color(0xFF52595F);
  final Color shade4 = const Color(0xFF464D52);
  final Color shade5 = const Color(0xFF3A4045);
  final Color shade6 = const Color(0xFF2E3236);
}

class TextDisabledColor {
  const TextDisabledColor();
  final Color shade1 = const Color(0xFFADB5BD); // Light Gray
  final Color shade2 = const Color(0xFF969DA4);
  final Color shade3 = const Color(0xFF7F868D);
  final Color shade4 = const Color(0xFF686E75);
  final Color shade5 = const Color(0xFF51565B);
  final Color shade6 = const Color(0xFF3A3D41);
}
