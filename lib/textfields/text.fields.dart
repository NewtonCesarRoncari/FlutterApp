import 'package:flutter/material.dart';

class TextFields {
  TextFormField buildTextFormFieldPassWord(String labelText) {
    return TextFormField(
      keyboardType: TextInputType.text,
      obscureText: true,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(
          fontSize: 20,
          color: Colors.black38,
          fontWeight: FontWeight.w400,
        ),
      ),
      style: TextStyle(fontSize: 21),
    );
  }

  TextFormField buildTextFormField(String labelText) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(
          fontSize: 20,
          color: Colors.black38,
          fontWeight: FontWeight.w400,
        ),
      ),
      style: TextStyle(fontSize: 20),
    );
  }

}