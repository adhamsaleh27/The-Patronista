import 'package:flutter/material.dart';

import '../constant/background.dart';
import '../constant/buttons.dart';

class DrawingNow extends StatelessWidget {
  static const routeName = 'DrawingNow';
  const DrawingNow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          MainPage(size: size),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(100),
                  child: Column(
                    children: [
                      CustomPaint(
                        painter: RPSCustomPainter(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                DefaultButton(text: "Print Pattern", onPressedFun: () {}),
                DefaultButton(text: "Save to Device", onPressedFun: () {}),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  double fac = 5;
  double height = 60;
  double waist = 60;
  double hhip = 20;
  double hip = 100;

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = const Color.fromARGB(255, 0, 0, 0)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.5;

    Path path = Path()
      ..moveTo(0, 0) // A
      ..lineTo(0, height * fac) // Z
      ..lineTo(((0.25 * hip) + 2) * fac, height * fac) // X
      ..lineTo(((0.25 * hip) + 2) * fac, hhip * fac) // F
      ..quadraticBezierTo(
          ((0.20 * hip) + 2) * fac * 1.2, 0, ((0.25 * waist) + 2) * fac, 0) //B
      ..lineTo(((0.125 * waist) + 2.5) * fac, 0) // M
      ..lineTo(((0.125 * waist) + 1) * fac, 10 * fac) // D
      ..lineTo(((0.125 * waist) - 2.5) * fac, 0) // M
      ..close();

    canvas.drawPath(path, paint);

    Paint paint1 = Paint()
      ..color = const Color.fromARGB(255, 0, 0, 0)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.5;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
