import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/grid_view.dart';
import 'package:shopping_app/widgets/list_view.dart';
import 'package:shopping_app/widgets/page_view.dart';

void main() {
  runApp(const MyApp()); // Entry point of the application
}

// Root widget of the application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes debug banner
      title: 'Shopping App', // Title of the app
      home: HomePage(), // Sets the HomePage as the default screen
    );
  }
}

// HomePage widget as a StatefulWidget to manage dynamic content
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

// State class for HomePage
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold provides the basic structure of the screen
      backgroundColor: Colors.white, // Sets the background color
      appBar: AppBar(
        backgroundColor: Color(0xFFd6ccc2), // Sets a custom app bar color
        title: Text(
          'Welcome', // AppBar title
          style: TextStyle(
            fontFamily: 'Pacifico', // Custom font for title
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search, // Search icon in the app bar
              color: Colors.black,
            ),
            onPressed: () {
              // Define search action here
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical, // Allows vertical scrolling
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height, // Ensures full height
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Minimizes size to content
            crossAxisAlignment: CrossAxisAlignment.start, // Aligns content to start
            children: [
              // Section title
              Text(
                '   Our Products..',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 30,
                ),
              ),
              ProductsPageView(), // Displays a horizontal page view of products

              Divider(
                indent: 20, // Adds a horizontal divider for visual separation
                endIndent: 20,
              ),

              ProductsGridView(), // Displays a grid view of product cards

              Divider(
                indent: 20, // Adds another divider
                endIndent: 20,
              ),

              // Section title
              Text(
                '   Hot Offers..',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 30,
                ),
              ),
              ProductsListView(), // Displays a list view of hot offers
            ],
          ),
        ),
      ),
    );
  }
}
