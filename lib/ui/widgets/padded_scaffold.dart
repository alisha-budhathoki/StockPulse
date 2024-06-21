import 'package:flutter/material.dart';

class PaddedScaffold extends StatelessWidget {
  const PaddedScaffold({
    super.key,
    required this.body,
    this.padding = 16.0,
    this.appBar,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
  });

  final Widget? body;
  final double padding;
  final PreferredSizeWidget? appBar;
  final FloatingActionButton? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Padding(
        padding: EdgeInsets.all(padding),
        child: body,
      ),
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation,
    );
  }
}
