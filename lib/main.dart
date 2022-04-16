import 'package:complete_flutter_project/screen/homepage.dart';
import 'package:complete_flutter_project/screen/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Cmplete Flutter",
      themeMode: ThemeMode.light,
      theme: ThemeData(fontFamily: GoogleFonts.lato().fontFamily),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/Home",
      routes: {
        "/": (context) => LoginPage(),
        "/Home": (context) => HomePage(),
      },
    );
  }
}
