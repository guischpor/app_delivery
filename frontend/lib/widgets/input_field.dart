import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String hint;
  final TextInputType textInputType;
  final Function(String) onChanged;
  final TextEditingController controller;
  final bool obscure;

  const InputField({
    Key key,
    this.hint,
    this.textInputType,
    this.onChanged,
    this.controller,
    this.obscure,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color.fromRGBO(142, 142, 147, 1.2),
      ),
      child: TextField(
        keyboardType: textInputType,
        controller: controller,
        onChanged: onChanged,
        obscureText: obscure,
        decoration: InputDecoration(
          hintText: hint,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
