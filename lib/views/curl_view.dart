import 'package:flutter/material.dart';
import 'package:gymbroappv4/views/pose_detection_view.dart';

class CurlView extends StatelessWidget {
  const CurlView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final ButtonStyle raiseButtonStyle = ElevatedButton.styleFrom(
      backgroundColor: Colors.black87,
      minimumSize: Size(size.width * 0.85, 36),
      padding: EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12))),
    );
    return Scaffold(
      appBar: AppBar(),
        backgroundColor: Color(0xffF5F5F5),
        body: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: size.width * 0.5,
                  height: size.width * 0.5,
                  child:
                      Image(image: AssetImage('assets/dumbbell-bicep-curl.gif'),)
                ),
                const Text('Curl de biceps!',
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -0.2)),
                Container(
                  width: size.width * 0.7,
                  child: const Text('Instrucciones',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 20.0, letterSpacing: -1.1,fontWeight: FontWeight.bold,)),
                ),
                Container(
                  width: size.width * 0.7,
                  child: const Text('1. De pie con una mancuerna en cada mano y los codos tocando los costados del torso.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 18.0, letterSpacing: -1.1)),
                ),
                Container(
                  width: size.width * 0.7,
                  child: const Text('2. Manteniendo inmóvil la parte superior del brazo, doble el peso correcto con la palma hacia adelante. Levanta la mancuerna hacia el hombro hasta que el bíceps esté completamente contraído. Mantén esta posición por un segundo y aprieta el bíceps.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 18.0, letterSpacing: -1.1)),
                ),
                Container(
                  width: size.width * 0.7,
                  child: const Text('3. Baja las mancuernas y repite el mismo movimiento con ambos brazos.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 18.0, letterSpacing: -1.1)),
                ),
                Spacer(),
                ElevatedButton(
                  style: raiseButtonStyle,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => PoseDetectorView()),
                    );
                  },
                  child: Text('Entrenar!', style: TextStyle(color: Colors.white)),
                ),
                 SizedBox(
                  height: size.height * 0.03,
                )
              ],
            ))); 
  }
}
