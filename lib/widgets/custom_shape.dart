import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree
// CustomPaint(
//     size: Size(WIDTH, (WIDTH*1.0745735640981582).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
//     painter: RPSCustomPainter(),
// )

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.3933129, size.height * 0.04321471);
    path_0.cubicTo(
      size.width * 0.5796599,
      size.height * -0.1926646,
      size.width * 0.7866258,
      size.height * 0.2070865,
      size.width * 0.7866258,
      size.height * 0.4092324,
    );
    path_0.cubicTo(
      size.width * 0.7866258,
      size.height * 0.6113783,
      size.width * 0.6105336,
      size.height * 0.7752483,
      size.width * 0.3933129,
      size.height * 0.7752483,
    );
    path_0.cubicTo(
      size.width * 0.1760923,
      size.height * 0.7752483,
      size.width * 0.07415181,
      size.height * 0.6013482,
      size.width * 0.05834205,
      size.height * 0.4170657,
    );
    path_0.cubicTo(
      size.width * 0.04253230,
      size.height * 0.2327831,
      size.width * 0.2069698,
      size.height * 0.2790977,
      size.width * 0.3933129,
      size.height * 0.04321471,
    );
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xffd9e4ff).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
