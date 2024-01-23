import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all( 10.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Tech",
              style: const TextStyle(
                fontSize: 42,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w800,
                color: Colors.white,
                // textBaseline:"end"
              ),
            ),
            Text(
              "Me",
              style: const TextStyle(
                fontSize: 42,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w800,
                color: Color.fromARGB(255, 26, 35, 133),
                // textBaseline:"end"
              ),
            )
          ]),
    );
  }
}
