import 'package:flutter/material.dart';
import 'package:work/MyHomepage.dart';
import 'package:work/components/TitleText.dart';
import 'package:work/screens/LoginPage.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            decoration: BoxDecoration(
            color: Colors.red,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 50, 10, 50),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:  [
                   TitleText(),
                        Container(
                          margin: const EdgeInsets.only(top: 20.0),
                          child: Text("Accelerating Tech with confidence",
                          textAlign: TextAlign.center,
                           style: const TextStyle(
                                fontSize: 15,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                // textBaseline:"end"
                              ),),
                        ),
                        Container(
                          width: 200,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(8),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("East Africa’s Biggest Tech Con Hub",
                            textAlign: TextAlign.center,
                             style: const TextStyle(
                                  fontSize: 15,
                                  
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(115, 239, 235, 235),
                                  // textBaseline:"end"
                                ),),
                          ),
                        ),
              
                            Container(
                              margin: const EdgeInsets.fromLTRB(10, 80, 10, 80),
                              child: Image.asset('assets/images/home_vector.png', fit: BoxFit.cover,)
                              ),
              
                            Container(
                              margin: const EdgeInsets.only(top: 20.0),
                              child: TextButton(
                                
                                // style: ButtonStyle(foregroundColor: MaterialStateProperty.all<Color>(Colors.indigo.shade900)),
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.indigo.shade900,
                                  padding:EdgeInsets.fromLTRB(120, 15, 120, 15),
                                  disabledBackgroundColor: Colors.indigo,
                                  // padding: EdgeInsets.all(20),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>  LoginPage()),
                                  );
                                },
                                child: Text("Join Now", style: const TextStyle(
                                fontSize: 15,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w400,
                                color: Colors.white ))),
                            ),
                              
                  ],
                  
                  ),
            )));
  }
}


class ImageBanner extends StatelessWidget {
  final String _assetPath;

  ImageBanner(this._assetPath);

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(height: 200.0),
        decoration: BoxDecoration(color: Colors.grey),
        child: Image.asset(
          _assetPath,
          fit: BoxFit.cover,
        ));
  }
}
