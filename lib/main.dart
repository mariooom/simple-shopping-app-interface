import 'package:flutter/material.dart';
import 'package:shopping_app/signUp.dart';

void main() {
  runApp(const MyApp()); // entry point of the application
}

// root widget of the application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //removes debug banner
      title: 'Shopping App', //title of the app
      home: MainPage(), // sets the SignUpPage as the default screen
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SignUpPage(), //start with SignUpPage
    );
  }
}
