import 'package:canvas_practice/screens/default_canvas_screen.dart';
import 'package:flutter/material.dart';

class DrawRectScreen extends StatelessWidget {
  const DrawRectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultCanvasScreen(
      title: 'Rect연습',
      customPainter: Rect1(),
    );
  }
}

class Rect1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;
    final centerX = size.width * 0.5;
    final centerY = size.height * 0.5;
    final Offset centerOffset = Offset(centerX, centerY);

    Paint paint = Paint();
    paint.color = Colors.tealAccent;

    Rect centerRect = fromCenterRect(
      centerOffset: centerOffset,
      width: width * 0.5,
      height: height * 0.5,
    );

    // canvas.drawRect(centerRect, paint);

    final fromCircle = fromCircleRect(centerOffset: centerOffset, radius: 50.0);
    paint.color = Colors.purpleAccent;

    // canvas.drawRect(fromCircle, paint);

    /// 좌 패딩, 상 패딩, 길이, 높이
    final Rect fromLTRB = fromLTRBRect(50, 190, 100, 200);
    paint.color = Colors.red;

    canvas.drawRect(fromLTRB, paint);

    // Rect fromLTWHRect = Rect.fromLTWH(50, 300, 100, 200);
    // paint.color = Colors.brown;

    // canvas.drawRect(fromLTWHRect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

  Rect fromCenterRect({required Offset centerOffset, required double width, required double height}) {
    return Rect.fromCenter(center: centerOffset, width: width, height: height);
  }

  Rect fromCircleRect({required Offset centerOffset, required double radius}) {
    return Rect.fromCircle(center: centerOffset, radius: radius);
  }

  Rect fromLTRBRect(double left, double top, double right, double bottom) {
    return Rect.fromLTRB(left, top, right, bottom);
  }
}
