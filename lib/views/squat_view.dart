import 'package:flutter/material.dart';
import 'package:gymbroappv4/views/pose_detection_view_squat.dart';

class SquatView extends StatelessWidget {
  const SquatView({super.key});

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
       body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
                Container(
                  alignment: Alignment.center,
                  width: size.width * 0.5,
                  height: size.width * 0.5,
                  child:
                      Image(image: AssetImage('assets/barbell-full-squat.gif'),)
                ),
                const Text('Sentadilla!',
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
                  child: const Text('1. Coloque la barra entre los trapecios y la parte superior de la espalda, con las manos separadas a la altura de los hombros.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 18.0, letterSpacing: -1.1)),
                ),
                Container(
                  width: size.width * 0.7,
                  child: const Text('2. Separe los pies a la altura de los hombros y descienda con la espalda recta y viendo al frente.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 18.0, letterSpacing: -1.1)),
                ),
                Container(
                  width: size.width * 0.7,
                  child: const Text('3. Mantenga la cabeza en posición neutra, la espalda y la columna en posición recta y neutra, el core flexionado y las rodillas ligeramente empujadas hacia afuera',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 18.0, letterSpacing: -1.1)),
                ),
                Container(
                  width: size.width * 0.7,
                  child: const Text('4. Desciende hasta el fondo donde los muslos queden paralelos al suelo. Y luego incorporate como si empujaras el piso.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 18.0, letterSpacing: -1.1)),
                ),
                ElevatedButton(
                  style: raiseButtonStyle,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => PoseDetectorViewSquat()),
                    );
                  },
                  child: Text('Entrenar!', style: TextStyle(color: Colors.white)),
                ),
                 SizedBox(
                  height: size.height * 0.03,
                )
            ],
          ),
        ),
      ),
    );
  }
}