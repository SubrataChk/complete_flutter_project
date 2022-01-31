import 'package:complete_flutter_project/screen/homepage.dart';
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
  bool changeButton = false;
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

          InkWell(
            onTap: () async {
              setState(() {
                changeButton = true;
              });
              await Future.delayed(Duration(seconds: 2));
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: AnimatedContainer(
              duration: Duration(seconds: 2),
              width: changeButton ? 50 : 150,
              height: 50,
              alignment: Alignment.center,
              child: changeButton
                  ? Icon(
                      Icons.done,
                      color: Colors.black,
                    )
                  : Text(
                      "Log In",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 22),
                    ),
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(changeButton ? 50 : 8)),
            ),
          )
          // ElevatedButton(
          //     style: TextButton.styleFrom(),
          //     onPressed: () {},
          //     child: Text("Log In"))
        ],
      ),
    )));
  }
}
