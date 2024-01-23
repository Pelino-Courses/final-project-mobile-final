import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:work/MyHomepage.dart";
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => MyHomepage(),
        ),
      );
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.red, Colors.red],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "TECH",
                          style: const TextStyle(
                            fontSize: 48,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                            // textBaseline:"end"
                          ),
                        ),
                        Text(
                          "ME",
                          style: const TextStyle(
                            fontSize: 48,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w800,
                            color: Colors.indigo,
                            // textBaseline:"end"
                          ),
                        )
                      ])
                ])));
  }
}
