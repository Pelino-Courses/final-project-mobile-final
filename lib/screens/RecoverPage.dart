import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:work/components/TextInputComponent.dart';
import 'package:work/components/TitleText.dart';
import 'package:work/screens/FirstPage.dart';
import 'package:work/screens/LoginPage.dart';
import 'package:work/screens/VerificationPage.dart';
// import 'package:timer_count_down/timer_controller.dart';
// import 'package:timer_count_down/timer_count_down.dart';

class RecoverPage extends StatelessWidget {
  
  const RecoverPage({super.key});

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
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TitleText(),
                
                Container(
                  margin: const EdgeInsets.fromLTRB(2, 30, 2,30),
                  child: Column(
                    
                    children: [
                        Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Text("If the email or phone  number is registered  you will receive a code",
                       textAlign: TextAlign.center,
                        style: TextStyle(
                          
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.w700)),
                  ),
                  
                    ],
                  ),
                ),
            
                Container(
                  width: screenSize.width - 50,
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  decoration: BoxDecoration(
                    // color: const Color.fromARGB(255, 141, 140, 140),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    
                    children: [
                      
                      Form(
                        child: Container(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              EmailInput(context),
                            
                            
                            ],
                          ),
                        ),
                      ),
                      Container(
                    
                    alignment: Alignment.bottomRight,
                    child:
                        appendText("Not received?", "Resend.", context, RecoverPage())
                        ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(2, 5, 2,5),
                        child: MyButton("Recover", Colors.indigo.shade900, context,VerificationPage() )),
                    ],
                  ),
                ),
  

                        Container(
                              margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Image.asset('assets/images/recover_vector.png', fit: BoxFit.cover,)
                              ),
              ],
            ),
          )),
    ));
  }
}

Widget EmailInput(context) {
    final screenSize = MediaQuery.of(context).size;

  return Container(
    // alignment: Alignment.center,
    alignment: Alignment.bottomCenter,
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      ),
    margin: const EdgeInsets.all(5),
    
    child: SizedBox(
      
      width: screenSize.width-60,
      height: 50,
      
      child: TextFormField(
        onSaved: (newValue) => {},
               
        textAlign: TextAlign.start,
        
        obscureText: true,
        decoration: InputDecoration(
          // border: OutlineInputBorder(),
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(10),
          
          hintText: "Enter your Email/phone number"
        ),
      ),
    ),
  );
}


// class MyWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Countdown(
//       seconds: 20,
//       build: (BuildContext context, double time) => Text(time.toString()),
//       interval: Duration(milliseconds: 100),
//       onFinished: () {
//         print('Timer is done!');
//       },
//     );
//   }
// }