import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  final bool obSecure;
  final IconData icons;

  const CustomTextFormField(
      {Key? key,
      required this.controller,
      required this.hintText,
      required this.labelText,
      required this.icons,
      required this.obSecure})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        controller: controller,
        obscureText: obSecure,
        style: TextStyle(fontSize: 18),
        decoration: InputDecoration(
            hintText: hintText,
            labelText: labelText,
            prefixIcon: Icon(icons),
            // suffixIcon: IconButton(
            //     onPressed: () {}, icon: Icon(Icons.remove_red_eye_outlined)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(width: 2, color: Colors.black))),
      ),
    );
  }
}
