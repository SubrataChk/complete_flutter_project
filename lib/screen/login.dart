import 'package:complete_flutter_project/widget/customformfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Image.asset(
            "assets/login.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Welcome",
            style: TextStyle(
                fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          CustomTextFormField(
            hintText: "Email",
            labelText: "Email",
            controller: email,
            icons: Icons.email_rounded,
            obSecure: false,
          ),
          CustomTextFormField(
            hintText: "Password",
            labelText: "Password",
            controller: password,
            icons: Icons.vpn_key_rounded,
            obSecure: true,
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              style: TextButton.styleFrom(),
              onPressed: () {},
              child: Text("Log In"))
        ],
      ),
    )));
  }
}
