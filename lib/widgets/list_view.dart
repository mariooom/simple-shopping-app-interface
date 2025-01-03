import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

// Stateless widget to display a horizontal list view of product offers
class ProductsListView extends StatelessWidget {
  const ProductsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350, // Fixed height for the list view container
      child: ListView.builder(
        scrollDirection: Axis.horizontal, // Enables horizontal scrolling
        shrinkWrap: true, // Allows the ListView to take only the required space
        itemCount: 1, // Specifies the number of items (one row in this case)
        itemBuilder: (context, index) {
          // Builds a row of cards for displaying product offers
          return Row(
            children: [
              // First product offer card
              Padding(
                padding: const EdgeInsets.all(12.0), // Adds padding around the card
                child: Card(
                  borderOnForeground: true, // Border drawn in the foreground
                  color: Color(0xFFf5ebe0), // Light beige background color
                  child: Padding(
                    padding: const EdgeInsets.all(5.0), // Padding inside the card
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center, // Center-align content
                      mainAxisSize: MainAxisSize.min, // Minimizes size to fit content
                      children: [
                        // Product image
                        Image.asset(
                          'assets/images/men.jpeg', // Path to the image asset
                          height: 170, // Fixed image height
                          width: 165, // Fixed image width
                          fit: BoxFit.cover, // Scales image to cover the container
                          alignment: Alignment.center, // Centers the image
                        ),
                        // Discount text
                        Text(
                          '15% Off'.tr(),
                          style: TextStyle(
                            fontFamily: 'Padauk', // Custom font style
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Second product offer card
              Padding(
                padding: const EdgeInsets.all(10.0), // Adds padding around the card
                child: Card(
                  color: Color(0xFFf5ebe0), // Light beige background color
                  child: Padding(
                    padding: const EdgeInsets.all(5.0), // Padding inside the card
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center, // Center-align content
                      mainAxisSize: MainAxisSize.min, // Minimizes size to fit content
                      children: [
                        // Product image
                        Image.asset(
                          'assets/images/jacket_women.jpeg', // Path to the image asset
                          height: 170, // Fixed image height
                          width: 165, // Fixed image width
                          fit: BoxFit.cover, // Scales image to cover the container
                          alignment: Alignment.center, // Centers the image
                        ),
                        // Discount text
                        Text(
                          '20% Off'.tr(),
                          style: TextStyle(
                            fontFamily: 'Padauk', // Custom font style
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Third product offer card
              Padding(
                padding: const EdgeInsets.all(12.0), // Adds padding around the card
                child: Card(
                  borderOnForeground: true, // Border drawn in the foreground
                  color: Color(0xFFf5ebe0), // Light beige background color
                  child: Padding(
                    padding: const EdgeInsets.all(5.0), // Padding inside the card
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center, // Center-align content
                      mainAxisSize: MainAxisSize.min, // Minimizes size to fit content
                      children: [
                        // Product image
                        Image.asset(
                          'assets/images/jacket_men.jpeg', // Path to the image asset
                          height: 170, // Fixed image height
                          width: 165, // Fixed image width
                          fit: BoxFit.cover, // Scales image to cover the container
                          alignment: Alignment.center, // Centers the image
                        ),
                        // Discount text
                        Text(
                          '20% Off'.tr(),
                          style: TextStyle(
                            fontFamily: 'Padauk', // Custom font style
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Fourth product offer card
              Padding(
                padding: const EdgeInsets.all(10.0), // Adds padding around the card
                child: Card(
                  color: Color(0xFFf5ebe0), // Light beige background color
                  child: Padding(
                    padding: const EdgeInsets.all(5.0), // Padding inside the card
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center, // Center-align content
                      mainAxisSize: MainAxisSize.min, // Minimizes size to fit content
                      children: [
                        // Product image
                        Image.asset(
                          'assets/images/kids.jpeg', // Path to the image asset
                          height: 170, // Fixed image height
                          width: 165, // Fixed image width
                          fit: BoxFit.cover, // Scales image to cover the container
                          alignment: Alignment.center, // Centers the image
                        ),
                        // Discount text
                        Text(
                          '45% Off'.tr(),
                          style: TextStyle(
                            fontFamily: 'Padauk', // Custom font style
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
