import 'package:flutter/material.dart';
import 'package:gymbroappv4/views/pose_detection_view.dart';

class PressMView extends StatelessWidget {
  const PressMView({super.key});

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
                      Image(image: AssetImage('assets/military-press.gif'),)
                ),
                const Text('Press militar!',
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
                  child: const Text('1. Comience con la barra ligeramente por debajo del nivel del pecho.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 18.0, letterSpacing: -1.1)),
                ),
                Container(
                  width: size.width * 0.7,
                  child: const Text('2. Con los brazos a la altura de los hombros, saque la barra y dé un paso hacia atrás.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 18.0, letterSpacing: -1.1)),
                ),
                Container(
                  width: size.width * 0.7,
                  child: const Text('3. Flexionando los glúteos y manteniendo el core tenso, empuja la barra hacia arriba por encima de la cabeza mientras exhalas. Asegúrese de que las rodillas permanezcan fijas en su lugar.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 18.0, letterSpacing: -1.1)),
                ),
                Container(
                  width: size.width * 0.7,
                  child: const Text('4. Baje la barra hacia la posición inicial mientras inhala.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 18.0, letterSpacing: -1.1)),
                ),
                Container(
                  width: size.width * 0.7,
                  child: const Text('5. Repita para las repeticiones.',
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
