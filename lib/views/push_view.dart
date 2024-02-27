import 'package:flutter/material.dart';
import 'package:gymbroappv4/views/pose_detection_view.dart';

class PushView extends StatelessWidget {
  const PushView({super.key});

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
                      Image(image: AssetImage('assets/close-grip-push-up.gif'),)
                ),
                const Text('Push up!',
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
                  child: const Text('1. Acuéstese boca abajo en el suelo con las manos ligeramente más anchas que el ancho de los hombros.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 18.0, letterSpacing: -1.1)),
                ),
                Container(
                  width: size.width * 0.7,
                  child: const Text('2. Levante el cuerpo del suelo extendiendo los brazos con el cuerpo recto.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 18.0, letterSpacing: -1.1)),
                ),
                Container(
                  width: size.width * 0.7,
                  child: const Text('3. Manteniendo el cuerpo recto, bájelo hasta el suelo doblando los brazos. Empuje el cuerpo hacia arriba hasta que los brazos estén extendidos.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 18.0, letterSpacing: -1.1)),
                ),
                Container(
                  width: size.width * 0.7,
                  child: const Text('4. Repita para las repeticiones.',
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
