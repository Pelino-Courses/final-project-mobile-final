import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:work/components/TextInputComponent.dart';
import 'package:work/components/TitleText.dart';
import 'package:work/screens/LoginPage.dart';
import 'package:work/screens/RecoverPage.dart';
// import 'package:timer_count_down/timer_controller.dart';
// import 'package:timer_count_down/timer_count_down.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                    child: Text("OTP Verification",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.w800)),
                  ),
                    Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Text("Enter the code from SMS",
                        style: TextStyle(
                            color: Colors.white70,
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w800)),
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
                      Container(
                        margin: const EdgeInsets.only(bottom:10),
                        alignment: Alignment.center,
                        child: Text("01:30",
                          style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              fontWeight: FontWeight.w800)),
                      ),
                      Form(
                        child: Container(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              OTPBox(context),
                              OTPBox(context),
                              OTPBox(context),
                              OTPBox(context),
                            
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(2, 30, 2,30),
                        child: MyButton("Next", Colors.indigo.shade900, context, RecoverPage())),
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    alignment: Alignment.bottomCenter,
                    child:
                        appendText("Didn't receive code?", "Resend.")),
              ],
            ),
          )),
    ));
  }
}

Widget OTPBox(context) {
  return Container(
    // alignment: Alignment.center,
    alignment: Alignment.bottomCenter,
    padding: EdgeInsets.fromLTRB(1, 10, 1, 10),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      ),
    margin: const EdgeInsets.all(5),
    
    child: SizedBox(
      width: 68,
      height: 50,
      
      child: TextFormField(
        onSaved: (newValue) => {},
        onChanged: (value) => {
          if(value.length == 1){
            FocusScope.of(context).nextFocus()
          }
        },
        style: Theme.of(context).textTheme.headline6,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
          ],
        obscureText: true,
        decoration: InputDecoration(
          // border: OutlineInputBorder(),
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(10),
          // hintText: "0"
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