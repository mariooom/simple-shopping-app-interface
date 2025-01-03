import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/grid_view.dart';
import 'package:shopping_app/widgets/list_view.dart';
import 'package:shopping_app/widgets/page_view.dart';
import 'package:easy_localization/easy_localization.dart';

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
          'Welcome'.tr(), // appBar title
          style: TextStyle(
            fontFamily: 'Pacifico', // custom font for title
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.language, // search icon in the app bar
              color: Colors.black,
            ),
            onPressed: () {  //when icon is pressed, it changes language
              if (context.locale == Locale('en', 'US')) {
                context.setLocale(Locale('ar', 'EG'));
              } else {
                context.setLocale(Locale('en', 'US'));
              }
            },
          ),
        ],
      ),
      body: SizedBox(
        height: 800,
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Our Products'.tr(),
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 30,
                    ),
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Hot Offers'.tr(),
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 30,
                    ),
                  ),
                ),
                ProductsListView(), // displays a list view of hot offers
              ],
            ),
          ),
        ),
      ),
    );
  }
}

