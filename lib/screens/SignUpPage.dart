import 'package:flutter/material.dart';
import 'package:work/MyHomepage.dart';
import 'package:work/components/TextInputComponent.dart';
import 'package:work/components/TitleText.dart';
import 'package:work/screens/LoginPage.dart';
import 'package:work/screens/RecoverPage.dart';
import 'package:work/screens/VerificationPage.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
        final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(top: 10),
              width: double.infinity,
              height: screenSize.height,
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(10),
                color: Colors.red,
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: ListView(
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TitleText(),
                    Container(
                      alignment: Alignment.center,
                            margin: const EdgeInsets.only(bottom: 10),
                            child: Text("Create Account",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800)),
                          ),
                    Container(
                      width: screenSize.width - 50,
                      
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      decoration: BoxDecoration(
                        // color: const Color.fromARGB(255, 141, 140, 140),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                         
                          TextInputComponent('Your Name', 'Your full name',
                              Icon(Icons.person), Colors.white),
                          TextInputComponent('Email', 'Your email',
                              Icon(Icons.email_rounded), Colors.white),
                          TextInputComponent('Phone Number', 'Your phone Number',
                              Icon(Icons.mobile_friendly_rounded), Colors.white),
                          TextInputComponent('Password', 'Password',
                              Icon(Icons.lock), Colors.white),
                          TextInputComponent('Confirm Password', 'Confirm Password',
                              Icon(Icons.lock), Colors.white),
                                                            
                          MyButton("Next", Colors.indigo.shade900, context, VerificationPage()),
                  
                        ],
                      ),
                    ),
          
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: appendText("Already have an account?", "Login Here.",  context, LoginPage())),
                  ],
                ),
              )),
        ));
  }
}