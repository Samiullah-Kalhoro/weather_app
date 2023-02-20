import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import '../kconstants.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        CustomPaint(
          size: Size(size.width, 100),
          painter: RPSCustomPainter(),
        ),
        Center(
          heightFactor: 1.4,
          child: FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () {
               ScaffoldMessenger.of(context).showSnackBar(

                    const SnackBar(
                      
                      content: Text('Will be added soon!'),
                    ),
                  );
            },
            shape: CircleBorder(
              side: BorderSide(
                color: kPrimaryColor,
                width: 3,
              ),
            ),
            child: const Icon(Icons.add),
          ),
        ),
        SizedBox(
          width: size.width,
          height: 90,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {
                   ScaffoldMessenger.of(context).showSnackBar(

                    const SnackBar(
                      
                      content: Text('Will be added soon!'),
                    ),
                  );
                },
                icon: Image.asset('assets/icons/Map.png'),
              ),
              SizedBox(
                width: size.width * 0.40,
              ),
              IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(

                    const SnackBar(

                      content: Text('Will be added soon!'),
                    ),
                  );
                },
                icon: Image.asset('assets/icons/List.png'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.1200000);
    path_0.cubicTo(
        0,
        size.height * 0.1200000,
        size.width * 0.1950690,
        size.height * 0.2798220,
        size.width * 0.3256410,
        size.height * 0.3200000);
    path_0.cubicTo(
        size.width * 0.3931769,
        size.height * 0.3407820,
        size.width * 0.4321897,
        size.height * 0.3500000,
        size.width * 0.5000000,
        size.height * 0.3500000);
    path_0.cubicTo(
        size.width * 0.5678103,
        size.height * 0.3500000,
        size.width * 0.6042590,
        size.height * 0.3407820,
        size.width * 0.6717949,
        size.height * 0.3200000);
    path_0.cubicTo(size.width * 0.8023667, size.height * 0.2798220, size.width,
        size.height * 0.1200000, size.width, size.height * 0.1200000);
    path_0.lineTo(size.width, size.height);
    path_0.lineTo(0, size.height);
    path_0.lineTo(0, size.height * 0.1200000);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.6961795, size.height * 0.1200000),
        Offset(size.width * 0.6961795, size.height), [
      const Color(0xff3A3A6A).withOpacity(1),
      const Color(0xff25244C).withOpacity(1)
    ], [
      0,
      1
    ]);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(0, size.height * 0.1200000);
    path_1.lineTo(size.width * 0.0001317892, size.height * 0.1175530);
    path_1.lineTo(size.width * -0.0006410256, size.height * 0.1169200);
    path_1.lineTo(size.width * -0.0006410256, size.height * 0.1200000);
    path_1.lineTo(size.width * -0.0006410256, size.height);
    path_1.lineTo(size.width * -0.0006410256, size.height * 1.002500);
    path_1.lineTo(0, size.height * 1.002500);
    path_1.lineTo(size.width, size.height * 1.002500);
    path_1.lineTo(size.width * 1.000641, size.height * 1.002500);
    path_1.lineTo(size.width * 1.000641, size.height);
    path_1.lineTo(size.width * 1.000641, size.height * 0.1200000);
    path_1.lineTo(size.width * 1.000641, size.height * 0.1169280);
    path_1.lineTo(size.width * 0.9998692, size.height * 0.1175520);
    path_1.lineTo(size.width, size.height * 0.1200000);
    path_1.cubicTo(
        size.width * 0.9998692,
        size.height * 0.1175520,
        size.width * 0.9998692,
        size.height * 0.1175530,
        size.width * 0.9998667,
        size.height * 0.1175540);
    path_1.lineTo(size.width * 0.9998615, size.height * 0.1175590);
    path_1.lineTo(size.width * 0.9998333, size.height * 0.1175810);
    path_1.lineTo(size.width * 0.9997256, size.height * 0.1176680);
    path_1.lineTo(size.width * 0.9993000, size.height * 0.1180110);
    path_1.cubicTo(
        size.width * 0.9989231,
        size.height * 0.1183150,
        size.width * 0.9983590,
        size.height * 0.1187650,
        size.width * 0.9976205,
        size.height * 0.1193550);
    path_1.cubicTo(
        size.width * 0.9961410,
        size.height * 0.1205350,
        size.width * 0.9939564,
        size.height * 0.1222710,
        size.width * 0.9911256,
        size.height * 0.1244950);
    path_1.cubicTo(
        size.width * 0.9854692,
        size.height * 0.1289430,
        size.width * 0.9772410,
        size.height * 0.1353420,
        size.width * 0.9669564,
        size.height * 0.1431460);
    path_1.cubicTo(
        size.width * 0.9463923,
        size.height * 0.1587550,
        size.width * 0.9176103,
        size.height * 0.1799850,
        size.width * 0.8847513,
        size.height * 0.2024710);
    path_1.cubicTo(
        size.width * 0.8190256,
        size.height * 0.2474460,
        size.width * 0.7370000,
        size.height * 0.2974280,
        size.width * 0.6717436,
        size.height * 0.3175080);
    path_1.cubicTo(
        size.width * 0.6042154,
        size.height * 0.3382870,
        size.width * 0.5677872,
        size.height * 0.3475000,
        size.width * 0.5000000,
        size.height * 0.3475000);
    path_1.cubicTo(
        size.width * 0.4322128,
        size.height * 0.3475000,
        size.width * 0.3932179,
        size.height * 0.3382860,
        size.width * 0.3256923,
        size.height * 0.3175080);
    path_1.cubicTo(
        size.width * 0.2604385,
        size.height * 0.2974280,
        size.width * 0.1790523,
        size.height * 0.2474460,
        size.width * 0.1139679,
        size.height * 0.2024710);
    path_1.cubicTo(
        size.width * 0.08142821,
        size.height * 0.1799860,
        size.width * 0.05296846,
        size.height * 0.1587560,
        size.width * 0.03264359,
        size.height * 0.1431470);
    path_1.cubicTo(
        size.width * 0.02248121,
        size.height * 0.1353430,
        size.width * 0.01435272,
        size.height * 0.1289440,
        size.width * 0.008765077,
        size.height * 0.1244960);
    path_1.cubicTo(
        size.width * 0.005971256,
        size.height * 0.1222730,
        size.width * 0.003812667,
        size.height * 0.1205370,
        size.width * 0.002352662,
        size.height * 0.1193570);
    path_1.cubicTo(
        size.width * 0.001622659,
        size.height * 0.1187670,
        size.width * 0.001067303,
        size.height * 0.1183160,
        size.width * 0.0006945179,
        size.height * 0.1180120);
    path_1.lineTo(size.width * 0.0002732564, size.height * 0.1176690);
    path_1.lineTo(size.width * 0.0001671764, size.height * 0.1175820);
    path_1.lineTo(size.width * 0.0001406000, size.height * 0.1175610);
    path_1.lineTo(size.width * 0.0001339682, size.height * 0.1175550);
    path_1.cubicTo(
        size.width * 0.0001325074,
        size.height * 0.1175540,
        size.width * 0.0001317892,
        size.height * 0.1175530,
        0,
        size.height * 0.1200000);
    path_1.close();

    Paint paint1Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.001282051;
    paint1Stroke.color = const Color(0xff758242).withOpacity(0.5);
    canvas.drawPath(path_1, paint1Stroke);

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xff2f2f52).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.4461538, 0);
    path_2.lineTo(size.width * 0.5538462, 0);
    path_2.cubicTo(
        size.width * 0.6358974,
        0,
        size.width * 0.6602590,
        size.height * 0.2413980,
        size.width * 0.6864923,
        size.height * 0.4869850);
    path_2.cubicTo(
        size.width * 0.7136538,
        size.height * 0.7412470,
        size.width * 0.7410256,
        size.height,
        size.width * 0.8307692,
        size.height);
    path_2.lineTo(size.width * 0.1692310, size.height);
    path_2.cubicTo(
        size.width * 0.2589744,
        size.height,
        size.width * 0.2863462,
        size.height * 0.7412470,
        size.width * 0.3135077,
        size.height * 0.4869850);
    path_2.cubicTo(size.width * 0.3397410, size.height * 0.2413980,
        size.width * 0.3641026, 0, size.width * 0.4461538, 0);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.6297821, size.height),
        Offset(size.width * 0.6297821, 0), [
      const Color(0xff262C51).withOpacity(1),
      const Color(0xff3E3F74).withOpacity(1)
    ], [
      0,
      1
    ]);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.4461538, size.height * 0.002500000);
    path_3.lineTo(size.width * 0.5538462, size.height * 0.002500000);
    path_3.cubicTo(
        size.width * 0.5946744,
        size.height * 0.002500000,
        size.width * 0.6211000,
        size.height * 0.06249740,
        size.width * 0.6406103,
        size.height * 0.1530060);
    path_3.cubicTo(
        size.width * 0.6595128,
        size.height * 0.2406970,
        size.width * 0.6719308,
        size.height * 0.3570410,
        size.width * 0.6846000,
        size.height * 0.4757500);
    path_3.cubicTo(
        size.width * 0.6850333,
        size.height * 0.4798130,
        size.width * 0.6854667,
        size.height * 0.4838790,
        size.width * 0.6859026,
        size.height * 0.4879470);
    path_3.lineTo(size.width * 0.6861641, size.height * 0.4904180);
    path_3.cubicTo(
        size.width * 0.6996487,
        size.height * 0.6166520,
        size.width * 0.7132821,
        size.height * 0.7442740,
        size.width * 0.7346795,
        size.height * 0.8404790);
    path_3.cubicTo(
        size.width * 0.7527487,
        size.height * 0.9217320,
        size.width * 0.7763513,
        size.height * 0.9805450,
        size.width * 0.8100231,
        size.height * 0.9975000);
    path_3.lineTo(size.width * 0.1899779, size.height * 0.9975000);
    path_3.cubicTo(
        size.width * 0.2236503,
        size.height * 0.9805450,
        size.width * 0.2472505,
        size.height * 0.9217320,
        size.width * 0.2653231,
        size.height * 0.8404790);
    path_3.cubicTo(
        size.width * 0.2867205,
        size.height * 0.7442730,
        size.width * 0.3003513,
        size.height * 0.6166510,
        size.width * 0.3138359,
        size.height * 0.4904170);
    path_3.lineTo(size.width * 0.3141000, size.height * 0.4879470);
    path_3.cubicTo(
        size.width * 0.3145333,
        size.height * 0.4838790,
        size.width * 0.3149667,
        size.height * 0.4798130,
        size.width * 0.3154000,
        size.height * 0.4757510);
    path_3.cubicTo(
        size.width * 0.3280692,
        size.height * 0.3570410,
        size.width * 0.3404872,
        size.height * 0.2406970,
        size.width * 0.3593897,
        size.height * 0.1530060);
    path_3.cubicTo(
        size.width * 0.3789000,
        size.height * 0.06249740,
        size.width * 0.4053256,
        size.height * 0.002500000,
        size.width * 0.4461538,
        size.height * 0.002500000);
    path_3.close();

    Paint paint3Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.001282051;
    paint3Stroke.color = const Color(0xff7582F4).withOpacity(0.5);
    canvas.drawPath(path_3, paint3Stroke);

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = const Color(0xff292e56).withOpacity(1.0);
    canvas.drawPath(path_3, paint3Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
