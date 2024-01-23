import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Tech Me")),
        body: SafeArea(
          bottom: false,
          child: Column(
            children: <Widget>[TextWidget(), TextWidget(), TextInputWidget(),
            Text("Testing custom font", style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 24,
              
            ), )
            ],
          ),
        ));
  }
}

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("Body Text", style: GoogleFonts.getFont('Poppins'),);
  }
}

class TextInputWidget extends StatefulWidget {
  const TextInputWidget({super.key});

  @override
  State<TextInputWidget> createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  final controller = TextEditingController();

  String text = "";

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

void changeText(text){
  setState(() {
    this.text = text;
  });
  
}
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          controller: this.controller,
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.message_sharp),
              labelText: "Type a message"),
              onChanged:(text)=> changeText(text),
        ),
        Text("$text")
      ],
    );
  }
}
