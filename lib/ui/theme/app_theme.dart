import 'package:flutter/material.dart';
import 'package:stock_pulse/ui/ui.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get lightTheme => ThemeData(
        fontFamily: FontNames.proximaNova,
        highlightColor: Palette.transparent,
        visualDensity: VisualDensity.standard,
        scaffoldBackgroundColor: Palette.light.shade5,
        splashColor: Palette.transparent,
        floatingActionButtonTheme: _floatingActionButtonTheme,
        dialogTheme: _dialogTheme,
        bottomSheetTheme: _bottomSheetTheme,
        elevatedButtonTheme: _elevatedButtonTheme,
        checkboxTheme: _checkboxTheme,
        appBarTheme: _appBarTheme,
        iconTheme: _iconTheme,
        cardTheme: _cardTheme,
        tabBarTheme: _tabBarTheme,
        inputDecorationTheme: _inputDecorationTheme,
        dividerTheme: _dividerTheme,
      );
  static CardTheme get _cardTheme => CardTheme(
        elevation: 0.0,
        color: Palette.light.shade5,
        margin: EdgeInsets.zero,
        shape: _circularBorderRadius,
      );

  static DividerThemeData get _dividerTheme => DividerThemeData(
        space: 1.0,
        thickness: 1.0,
        color: Palette.textDisabled.shade3,
      );

  static InputDecorationTheme get _inputDecorationTheme => InputDecorationTheme(
        prefixIconColor: Palette.primaryDark.shade1,
        suffixIconColor: Palette.primaryDark.shade1,
        filled: true,
        isDense: true,
        errorMaxLines: 2,
        alignLabelWithHint: true,
        fillColor: Palette.light.shade4,
        contentPadding: const EdgeInsets.all(12.0),
        border: outlinedInputBorder(Palette.textDisabled.shade4),
        enabledBorder: outlinedInputBorder(Palette.textDisabled.shade5),
        disabledBorder: outlinedInputBorder(Palette.textDisabled.shade2),
        focusedBorder: outlinedInputBorder(Palette.primaryDark.shade3),
        errorBorder: outlinedInputBorder(Palette.errorDark.shade3),
        focusedErrorBorder: outlinedInputBorder(Palette.errorDark.shade3),
        labelStyle: TextStyles.bodyText3.withColor(Palette.textDisabled.shade4),
        errorStyle: TextStyles.bodyText1.withColor(Palette.errorDark.shade3),
        floatingLabelStyle:
            TextStyles.bodyText2.withColor(Palette.primaryDark.shade3),
      );

  static OutlineInputBorder outlinedInputBorder(Color color) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color),
      borderRadius: BorderRadius.circular(8.0),
    );
  }

  static TabBarTheme get _tabBarTheme => TabBarTheme(
        dividerHeight: 0.0,
        indicatorSize: TabBarIndicatorSize.tab,
        labelStyle: TextStyles.bodyText2.semibold,
        unselectedLabelStyle: TextStyles.bodyText2.semibold,
        labelColor: Palette.primaryDark.shade3,
        unselectedLabelColor: Palette.textDisabled.shade3,
        labelPadding: const EdgeInsets.symmetric(horizontal: 16.0),
      );

  static FloatingActionButtonThemeData get _floatingActionButtonTheme =>
      FloatingActionButtonThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(64.0),
        ),
      );

  static DialogTheme get _dialogTheme => DialogTheme(
        elevation: 4.0,
        backgroundColor: Palette.light.shade5,
        surfaceTintColor: Palette.light.shade5,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      );

  static BottomSheetThemeData get _bottomSheetTheme => BottomSheetThemeData(
        elevation: 4.0,
        clipBehavior: Clip.antiAlias,
        backgroundColor: Palette.light.shade3,
        surfaceTintColor: Palette.light.shade3,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8.0),
            topRight: Radius.circular(8.0),
          ),
        ),
      );

  static ElevatedButtonThemeData get _elevatedButtonTheme =>
      ElevatedButtonThemeData(
        style: ButtonStyle(
          elevation: WidgetStateProperty.all(0.0),
          padding: WidgetStateProperty.all(
            const EdgeInsets.symmetric(horizontal: 32.0, vertical: 10.0),
          ),
          shape: WidgetStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          ),
          foregroundColor: WidgetStateProperty.all(Palette.light.shade5),
          backgroundColor: WidgetStateProperty.resolveWith(
            (state) => state.contains(WidgetState.disabled)
                ? Palette.textSecondary.shade5
                : Palette.primaryDark.shade1,
          ),
        ),
      );

  static CheckboxThemeData get _checkboxTheme => CheckboxThemeData(
        shape: _circularBorderRadius,
        side: BorderSide(color: Palette.textDisabled.shade3),
        fillColor: WidgetStateProperty.resolveWith(
          (state) => Palette.textDisabled.shade3,
        ),
        checkColor: WidgetStateProperty.resolveWith(
          (state) => state.contains(WidgetState.selected)
              ? Palette.primaryDark.shade3
              : Palette.textDisabled.shade3,
        ),
      );

  static RoundedRectangleBorder get _circularBorderRadius =>
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      );

  static AppBarTheme get _appBarTheme => AppBarTheme(
        elevation: 0.0,
        centerTitle: false,
        titleSpacing: 0.0,
        iconTheme: _iconTheme,
        actionsIconTheme: _iconTheme,
        backgroundColor: Palette.light.shade5,
        surfaceTintColor: Palette.light.shade3,
        titleTextStyle: TextStyles.bodyText3.semibold,
      );

  static IconThemeData get _iconTheme => IconThemeData(
        size: 20.0,
        color: Palette.dark.shade5,
      );
}
