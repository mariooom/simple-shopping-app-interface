import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/grid_view.dart';
import 'package:shopping_app/widgets/list_view.dart';
import 'package:shopping_app/widgets/page_view.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // scaffold provides the basic structure of the screen
      backgroundColor: Colors.white, // sets the background color
      appBar: AppBar(
        backgroundColor: Color(0xFFd6ccc2), // sets a custom app bar color
        title: Text(
          'Welcome', // appBar title
          style: TextStyle(
            fontFamily: 'Pacifico', // custom font for title
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search, // search icon in the app bar
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SizedBox(
        height: 700,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical, //allows vertical scrolling
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight:
                  MediaQuery.of(context).size.height, // ensures full height
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min, //minimizes size to content
              crossAxisAlignment:
                  CrossAxisAlignment.start, // aligns content to start
              children: [
                Text(
                  '   Our Products..',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 30,
                  ),
                ),
                ProductsPageView(), // displays a horizontal page view of products

                Divider(
                  indent: 20, // adds a horizontal divider for visual separation
                  endIndent: 20,
                ),

                ProductsGridView(), // displays a grid view of product cards

                Divider(
                  indent: 20, // Aads another divider
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
                ProductsListView(), // displays a list view of hot offers
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // bottom navigation bar
        backgroundColor: Color(0xFFd6ccc2), //custom navigation bar color
        items: const <BottomNavigationBarItem>[
          // navigation bar items
          BottomNavigationBarItem(
            //home page item
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            //settings page item
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            //profile page item
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
