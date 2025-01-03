import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'homePage.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool hiddenPassword = true;
  bool hiddenConfirmPassword = true;

  void _showSnackBar(String message) {
    final snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _validateAndShowDialog() {
    if (_formKey.currentState!.validate()) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Success'.tr()),
          content: Text('Account Created Successfully'.tr()),
          actions: [
            TextButton(
              child: Text('OK'.tr()),
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                  //navigating to the home page
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        HomePage(),
                        //to add fade animation to transition
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      return FadeTransition(
                        opacity: animation,
                        child: HomePage(),
                      );
                    },
                    transitionDuration: const Duration(seconds: 2),
                  ),
                );
              },
            ),
          ],
        ),
      );
    } else {
      _showSnackBar('Please correct the errors in the form'.tr());
    }
  }

  void changeLang() {  //method to change language
    if (context.locale == Locale('en', 'US')) {
      context.setLocale(Locale('ar', 'EG'));
    } else {
      context.setLocale(Locale('en', 'US'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              Icons.language,
              color: Colors.black,
            ),
            onPressed: () {
              changeLang();
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/images/signup.png",
                  width: 200,
                  height: 200,
                ),
              ),
              Text('Welcome'.tr(),
                  style: TextStyle(fontSize: 36, fontFamily: 'Pacifico')),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: nameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Name cannot be empty'.tr();
                    }
                    return null; //to allow any name, including Arabic
                  },
                  decoration: InputDecoration(
                    labelText: 'Name'.tr(),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Email cannot be empty'.tr();
                    }
                    if (!value.contains('@')) {
                      return 'Email must contain @'.tr();
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Email'.tr(),
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password cannot be empty'.tr();
                    }
                    if (value.length < 6) {
                      return 'Password must be at least 6 characters'.tr();
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Password'.tr(),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(hiddenPassword
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          hiddenPassword = !hiddenPassword;
                        });
                      },
                    ),
                  ),
                  obscureText: hiddenPassword,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: confirmPasswordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please confirm your password'.tr();
                    }
                    if (value != passwordController.text) {
                      return 'Passwords do not match'.tr();
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Confirm Password'.tr(),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(
                        hiddenConfirmPassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          hiddenConfirmPassword = !hiddenConfirmPassword;
                        });
                      },
                    ),
                  ),
                  obscureText: hiddenConfirmPassword,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: MaterialButton(
                  height: 70,
                  color: Color(0xFFd6ccc2),
                  onPressed: _validateAndShowDialog,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Color(0xFFd6ccc2), width: 1.0),
                  ),
                  child: Text(
                    'Sign Up'.tr(),
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontFamily: 'Pacifico'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
