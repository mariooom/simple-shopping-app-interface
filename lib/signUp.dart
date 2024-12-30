import 'package:flutter/material.dart';
import 'package:shopping_app/homePage.dart';

class SignUpPage extends StatefulWidget {
  // entry point of the page
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  // text editing controllers for name, email and password
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>(); // key for the form
  bool hiddenPassword = true; // password visibility
  bool hiddenConfirmPassword = true; //confirm password visibility

//creating a method to show snackbar and display a message
  void _showSnackBar(String message) {
    final snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  // creating a method to validate and show dialog
  void _validateAndShowDialog() {
    if (_formKey.currentState!.validate()) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Success'),
          content: Text('Account Created Successfully'),
          actions: [
            TextButton(
              child: Text('OK'),
              onPressed: () {
                //adding a function to navigate to the home page
                Navigator.pop(context); //closing the dialog
                Navigator.push(
                  //navigating to the home page
                  context,
                  PageRouteBuilder(
                    //using PageRouteBuilder
                    pageBuilder: (context, animation,
                            secondaryAnimation) => //passing the HomePage widget
                        HomePage(),
                    transitionsBuilder: //defining the transition used
                        (context, animation, secondaryAnimation, child) {
                      return FadeTransition(
                        //using FadeTransition
                        opacity: animation, //defining the opacity
                        child: HomePage(), //passing the HomePage widget
                      );
                    },
                    transitionDuration:
                        const Duration(seconds: 2), //defining the duration
                  ),
                );
              },
            ),
          ],
        ),
      );
    } else {
      _showSnackBar(
          'Please correct the errors in the form'); //if form is not valid, show snackbar
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      //creating a scrollable widget
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 80),
            Padding(
              padding: const EdgeInsets.all(8.0),
              //adding image from assets
              child: Image.asset(
                "assets/images/signup.png",
                width: 200,
                height: 200,
              ),
            ),
            //displaying welcome text
            Text('Welcome',
                style: TextStyle(fontSize: 36, fontFamily: 'Pacifico')),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                //adding text form field for name
                controller: nameController, //controller for name
                validator: (value) {
                  //validator for name
                  if (value == null || value.isEmpty) {
                    //throw error if name is empty
                    return 'Name cannot be empty'; //return error message
                  }
                  if (!RegExp(r'^[A-Z]').hasMatch(value)) {
                    //check if first letter is capitalized
                    return 'First letter must be capitalized'; //return error message
                  }
                  return null; //return null if name is valid
                },
                decoration: const InputDecoration(
                  //decoration for text form field
                  labelText: 'Name',
                  prefixIcon: Icon(Icons.person), //icon for text form field
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                //adding text form field for email
                controller: emailController, //controller for email
                validator: (value) {
                  //validator for email
                  if (value == null || value.isEmpty) {
                    //throw error if email is empty
                    return 'Email cannot be empty'; //return error message
                  }
                  if (!value.contains('@')) {
                    //check if email contains @
                    return 'Email must contain @'; //return error message
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  //decoration for text form field
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email), //icon for text form field
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                //adding text form field for password
                controller: passwordController, //controller for password
                validator: (value) {
                  //validator for password
                  if (value == null || value.isEmpty) {
                    //throw error if password is empty
                    return 'Password cannot be empty'; //return error message
                  }
                  if (value.length < 6) {
                    //check if password is at least 6 characters
                    return 'Password must be at least 6 characters'; //return error message
                  }
                  return null; //return null if password is valid
                },
                decoration: InputDecoration(
                  //decoration for text form field
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock), //icon for text form field
                  suffixIcon: IconButton(
                    //icon button for password visibility
                    icon: Icon(hiddenPassword
                        ? Icons.visibility
                        : Icons
                            .visibility_off), //to show or hide password icons
                    onPressed: () {
                      setState(() {
                        //set state to update visibility
                        hiddenPassword = !hiddenPassword; //toggle visibility
                      });
                    },
                  ),
                ),
                obscureText: hiddenPassword, //obscure text to hide password
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                //adding text form field for confirm password
                controller:
                    confirmPasswordController, //controller for confirm password
                validator: (value) {
                  //validator for confirm password
                  if (value == null || value.isEmpty) {
                    //throw error if confirm password is empty
                    return 'Please confirm your password'; //return error message
                  }
                  if (value != passwordController.text) {
                    //check if confirm password matches password
                    return 'Passwords do not match'; //return error message
                  }
                  return null; //return null if confirm password is valid
                },
                decoration: InputDecoration(
                  //decoration for text form field
                  labelText: 'Confirm Password',
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    //icon button for confirm password visibility
                    icon: Icon(
                      hiddenConfirmPassword
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ), //to show or hide confirm password icons
                    onPressed: () {
                      setState(() {
                        //set state to update visibility
                        hiddenConfirmPassword =
                            !hiddenConfirmPassword; //toggle visibility
                      });
                    },
                  ),
                ),
                obscureText:
                    hiddenConfirmPassword, //obscure text to hide confirm password
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: MaterialButton(
                //creating button for sign up
                height: 70,
                color: Color(0xFFd6ccc2),
                onPressed:
                    _validateAndShowDialog, //function to validate and show dialog
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), //round corners
                  side:
                      BorderSide(color: Color(0xFFd6ccc2), width: 1.0), //border
                ),
                child: Text(
                  //add custom text to button
                  'Sign Up',
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
    );
  }
}
