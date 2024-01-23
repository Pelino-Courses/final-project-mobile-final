import "package:flutter/material.dart";

class InputText extends StatefulWidget {
  const InputText({super.key});

  @override
  State<InputText> createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  final controller = TextEditingController();

  String text = "";

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  void changeText(text) {
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
          onChanged: (text) => changeText(text),
        ),
      ],
    );
  }
}

Widget TextInputWidget(label, MyIcon) {

  return Container(
    child:Column(
      children: <Widget>[
        TextField(
          
          decoration: InputDecoration(
              prefixIcon: MyIcon,
              labelText: label),
          onChanged: (text) => {},
        ),
      ],
    )
  );
}
