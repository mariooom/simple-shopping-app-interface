import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'signUp.dart'; 

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();   
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en', 'US'), Locale('ar', 'EG')],
      path: 'lang', // Path to translation files
      fallbackLocale: Locale('en', 'US'),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,  //to add localizations
      supportedLocales: context.supportedLocales,    
      locale: context.locale,
      debugShowCheckedModeBanner: false, //removes debug banner
      title: 'Shopping App', // Title of the app
      home: MainPage(), // Sets the MainPage as the default screen
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SignUpPage(), // Start with SignUpPage
    );
  }
}
