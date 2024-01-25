import "package:flutter/material.dart";
import "package:work/MyHomepage.dart";
import "package:work/components/InputText.dart";
import "package:work/components/TextInputComponent.dart";
import "package:work/components/TitleText.dart";
import "package:work/screens/SignUpPage.dart";

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
            padding: const EdgeInsets.only(top: 30),
            width: double.infinity,
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(10),
              color: Colors.red,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 50, 10, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TitleText(),
                  Container(
                    width: screenSize.width - 50,
                    margin: const EdgeInsets.fromLTRB(10, 10, 10, 5),
                    padding: const EdgeInsets.fromLTRB(20, 30, 20, 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Login",
                            style: TextStyle(
                                color: Colors.indigo.shade900,
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w800)),
                        TextInputComponent('Username', 'enter your username',
                            Icon(Icons.person), Colors.black26),
                        TextInputComponent('Password', 'enter your password',
                            Icon(Icons.lock), Colors.black26),
                        Container(
                          alignment: Alignment.bottomRight,
                          child: Text("Forgot password",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600)),
                        ),
                        MyButton("Login", Colors.red, context,SignUpPage()),
                        Container(
                          margin: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(style: BorderStyle.solid))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                  child: Image.asset(
                                    'assets/images/github.png',
                                    fit: BoxFit.cover,
                                  )),
                              Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                  child: Image.asset(
                                    'assets/images/twitter.png',
                                    fit: BoxFit.cover,
                                  )),
                              Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                  child: Image.asset(
                                    'assets/images/google.png',
                                    fit: BoxFit.cover,
                                  )),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  appendText("Not a member?", "Sign Up"),
                ],
              ),
            )));
  }
}

Widget appendText(String whiteText, String blueText) {
  return Container(
    margin: const EdgeInsets.only(top: 20.0),
    child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            whiteText,
            style: const TextStyle(
              fontSize: 15,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w600,
              color: Colors.white,
              // textBaseline:"end"
            ),
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                '  $blueText',
                style: const TextStyle(
                  fontSize: 15,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 26, 35, 133),
                  // textBaseline:"end"
                ),
              )),
        ]),
  );
}

class LowerText extends StatelessWidget {
  const LowerText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Not a member?",
              style: const TextStyle(
                fontSize: 15,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
                color: Colors.white,
                // textBaseline:"end"
              ),
            ),
            Text(
              "  Sign Up",
              style: const TextStyle(
                fontSize: 15,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 26, 35, 133),
                // textBaseline:"end"
              ),
            )
          ]),
    );
  }
}

Widget MyButton(label, color, context, Page) {
  return Container(
    margin: const EdgeInsets.only(top: 20.0),
    child: TextButton(

        // style: ButtonStyle(foregroundColor: MaterialStateProperty.all<Color>(Colors.indigo.shade900)),
        style: TextButton.styleFrom(
          elevation: 4,
          backgroundColor: color,
          padding: EdgeInsets.fromLTRB(120, 15, 120, 15),
          disabledBackgroundColor: Colors.indigo,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Page),
          );
        },
        child: Text(label,
            style: const TextStyle(
                fontSize: 15,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w400,
                color: Colors.white))),
  );
}
