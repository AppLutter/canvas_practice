import 'package:flutter/material.dart';

class DefaultCanvasScreen extends StatelessWidget {
  const DefaultCanvasScreen({
    Key? key,
    required this.title,
    required this.customPainter,
  }) : super(key: key);
  final String title;
  final CustomPainter customPainter;

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SizedBox(
        width: deviceSize.width,
        height: deviceSize.height,
        child: CustomPaint(
          painter: customPainter,
        ),
      ),
    );
  }
}
