import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

// Stateless widget to display a grid view of products
class ProductsGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300, //fixed height for the grid view container
      child: GridView.builder(
        shrinkWrap: true, // ensures the GridView only occupies required space
        controller: ScrollController(
            initialScrollOffset: 100.0), //initializes scroll position
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1, // single row of items
        ),
        itemCount: 1, // Only one row of items in the grid
        itemBuilder: (context, index) {
          // Creates a row of cards for each product
          return Row(
            children: [
              // First product card
              Padding(
                padding:
                    const EdgeInsets.all(8.0), // Adds padding around the card
                child: Card(
                  borderOnForeground: true, // Border drawn in the foreground
                  color: Color(0xFFf5ebe0), // Light beige background color
                  child: Padding(
                    padding:
                        const EdgeInsets.all(5.0), // Padding inside the card
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.center, // Center-align content
                      mainAxisSize:
                          MainAxisSize.min, // Minimizes size to fit content
                      children: [
                        Image.asset(
                          'assets/images/men.jpeg',
                          height: 170,
                          width: 160,
                          fit: BoxFit
                              .cover, // Scales image to cover the container
                          alignment: Alignment.center, // Centers the image
                        ),

                        Text(
                          'Brown Jacket'.tr(),
                          style: TextStyle(
                            fontFamily: 'Padauk', // Custom font style
                            fontSize: 20,
                          ),
                        ),
                        // Add to cart button
                        IconButton(
                          onPressed: () {
                            // Displays a snackbar notification when tapped
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                  content: Text('Item added to cart'.tr())),
                            );
                          },
                          icon: Icon(
                              Icons.add_shopping_cart), // Shopping cart icon
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Second product card
              Padding(
                padding:
                    const EdgeInsets.all(8.0), // Adds padding around the card
                child: Card(
                  color: Color(0xFFf5ebe0), // Light beige background color
                  child: Padding(
                    padding:
                        const EdgeInsets.all(5.0), // Padding inside the card
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.center, // Center-align content
                      mainAxisSize:
                          MainAxisSize.min, // Minimizes size to fit content
                      children: [
                        // Product image
                        Image.asset(
                          'assets/images/women.jpeg', // Path to the image asset
                          height: 170, // Fixed image height
                          width: 160, // Fixed image width
                          fit: BoxFit
                              .cover, // Scales image to cover the container
                          alignment: Alignment.center, // Centers the image
                        ),
                        // Product name
                        Text(
                          'Red Pullover'.tr(),
                          style: TextStyle(
                            fontFamily: 'Padauk', // Custom font style
                            fontSize: 20,
                          ),
                        ),
                        // Add to cart button
                        IconButton(
                          onPressed: () {
                            // Displays a snackbar notification when tapped
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                  content: Text('Item added to cart'.tr())),
                            );
                          },
                          icon: Icon(
                              Icons.add_shopping_cart), // Shopping cart icon
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
