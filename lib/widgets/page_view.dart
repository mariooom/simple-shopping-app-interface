import 'package:flutter/material.dart';

// Stateless widget for displaying a horizontal page view of products
class ProductsPageView extends StatelessWidget {
  const ProductsPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // A container to hold the PageView with custom styling
        Container(
          margin: EdgeInsets.all(8.0), // Adds margin around the container
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0), // Rounded corners
            color: Color(0xFFedede9), // Light grey background color
          ),
          height: 270, // Fixed height for the container
          
          // PageView for horizontally scrolling product images
          child: PageView(
            scrollDirection: Axis.horizontal, // Horizontal scrolling
            children: [
              // Each container holds an image of a product
              Container(
                width: MediaQuery.of(context).size.width, // Full screen width
                child: Image.asset(
                  'assets/images/jacket_men.jpeg', // Men's jacket image
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width, // Full screen width
                child: Image.asset(
                  'assets/images/jacket_women.jpeg', // Women's jacket image
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width, // Full screen width
                child: Image.asset(
                  'assets/images/kids.jpeg', // Kids' clothing image
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width, // Full screen width
                child: Image.asset(
                  'assets/images/pull_men.jpeg', // Men's pullover image
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width, // Full screen width
                child: Image.asset(
                  'assets/images/pull_women.jpeg', // Women's pullover image
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
