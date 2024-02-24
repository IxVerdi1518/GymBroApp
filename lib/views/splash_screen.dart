import 'package:flutter/material.dart';
import 'package:gymbroappv4/views/pose_detection_view.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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
        backgroundColor: Color(0xffF5F5F5),
        body: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * 0.15,
                ),
                Container(
                    alignment: Alignment.center,
                    width: size.width * 0.7,
                    height: size.width * 0.7,
                    child: Lottie.asset('assets/gymbrologo.json',
                        fit: BoxFit.cover),
                        ),
                SizedBox(
                  height: 40,
                ),
                const Text('Soy tu GymBro!',
                    style: TextStyle(
                        fontSize: 38.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -0.2)),
                Container(
                  width: size.width * 0.7,
                  child: const Text('¿Con qué le vamos a dar fuerte?',
                      textAlign: TextAlign.center,
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
                  child: Text('Push Up', style: TextStyle(color: Colors.white)),
                ),
                ElevatedButton(
                  style: raiseButtonStyle,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => PoseDetectorView()),
                    );
                  },
                  child: Text('Curl de biceps',
                      style: TextStyle(color: Colors.white)),
                ),
                SizedBox(
                  height: size.height * 0.03,
                )
              ],
            )));
  }
}
