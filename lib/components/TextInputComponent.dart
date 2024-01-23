import 'package:flutter/material.dart';


Widget TextInputComponent(title,label, MyIcon, labelCol) {

  return Container(
    margin: const EdgeInsets.only(bottom: 15),
    child:Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(title, style: const TextStyle(
                fontSize: 15,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 2, 6, 44),
                // textBaseline:"end"
              ),),
        TextField(
          
          decoration: InputDecoration(
            fillColor: labelCol,
            prefixIconColor: labelCol,
            suffixIconColor: labelCol,
            labelStyle: TextStyle(color: labelCol,
             fontSize: 15,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
            ),
              prefixIcon: MyIcon,
              labelText: (label)),
          onChanged: (text) => {},
        ),
      ],
    )
  );
}
