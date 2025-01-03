
# Simple Shopping App Interface with Localization
This project demonstrates how to build a responsive and localized user interface using Flutter. The application features a sign-up page and a stateful home page with a horizontal scrollable layout containing multiple sections: a PageView for products, a GridView for product cards, and a ListView for hot offers. Additionally, the app includes smooth fade animations for seamless transitions between pages and supports multiple languages for a global audience.
# Features:
1. Sign-Up Page
A fully functional Sign-Up Page that allows users to:
- Input their name, email, password, and confirm password.
- Validate input fields with detailed error handling:
- Name must not be empty.
- Email must contain an "@" symbol.
- Password must be at least 6 characters long.
- Password and confirm password must match.
- View and hide passwords using a toggle button.
- Submit the form to create an account and navigate to the home page.
- Includes a success dialog upon account creation.
- Fade Animation: After confirming the dialog, the sign-up page fades out while the home page fades in, creating a smooth transition.
2. Responsive Design
- Utilizes MediaQuery to ensure the UI adjusts dynamically to various screen sizes.
3. Home Page
Contains multiple horizontally scrollable sections:
- Our Products: Displays a PageView for browsing product images.
- Product Grid: A responsive GridView displaying product cards with images, text, and an "Add to Cart" button. Includes a Snackbar notification for adding items to the cart.
- Hot Offers: A ListView displaying a list of hot offers with images and text.
4. Localization Support
- The app supports multiple languages (English and Arabic) using the easy_localization package.
- Users can switch between languages using a language toggle button in the app bar.
- All text in the app (e.g., labels, buttons, error messages) is localized and dynamically updates when the language changes.
5. Horizontal Scrolling
- The entire layout is horizontally scrollable using a SingleChildScrollView with horizontal orientation.
# Pages
1. Sign-Up Page
- The entry point for the app.
- Contains a Form with the following fields:
1)Name
2)Email
3)Password
4)Confirm Password
- Provides real-time validation and error messages.
- After successful submission, navigates to the home page with a fade animation.
2. Home Page
Contains:
- A title bar.
- Horizontally scrollable sections:
- Our Products: Displays product images in a PageView.
- Product Grid: Cards with text, images, and an "Add to Cart" button.
- Hot Offers: A list of items with images and descriptions.
# Localization Setup
Supported Languages
1. English (en-US)
2. Arabic (ar-EG)
- Translation Files
The app uses JSON files for translations, located in the lang directory:
1) en-US.json for English translations.
2) ar-EG.json for Arabic translations.
# Output:


![WhatsApp Image 2024-12-30 at 00 06 29_e04a530d](https://github.com/user-attachments/assets/ca113222-bce6-4b4a-9f0c-680dff5fd942)
![WhatsApp Image 2024-12-30 at 00 06 29_a6aeb1f0](https://github.com/user-attachments/assets/0fead678-d843-46c2-b493-a9f6c350645e)
![WhatsApp Image 2024-12-30 at 00 03 03_29c790c7](https://github.com/user-attachments/assets/c720a2cd-a609-490a-bd36-bfe1cb3afa92)
![WhatsApp Image 2024-12-30 at 00 06 29_16f8e822](https://github.com/user-attachments/assets/3dbb21ba-5cd3-4b05-9053-2c957b457547)



![WhatsApp Image 2024-12-30 at 00 02 46_9b34042f](https://github.com/user-attachments/assets/62fae952-47be-4cb3-9ec5-51f5ed5f3b5d)
![homepage_1](https://github.com/user-attachments/assets/8a8a1edf-281a-4f8f-80b7-b99d48f64e13)
![arabic2](https://github.com/user-attachments/assets/a57f7c03-564e-4c41-bbd2-c0972f90c50f)
![arabic3](https://github.com/user-attachments/assets/564795f5-c955-45e8-bad4-16f56e2f4ac1)
![ar4](https://github.com/user-attachments/assets/2eb447c5-8cba-4b57-ae6b-d2b986f91e7d)
![ar5](https://github.com/user-attachments/assets/d387033a-08c3-4a09-a846-a869a90c6acf)
![ar6](https://github.com/user-attachments/assets/7849c16a-9665-4a8e-b429-0f7fd31279e9)
![arabic1](https://github.com/user-attachments/assets/9558da4d-e23c-4daf-b18d-682089b15c97)






https://github.com/user-attachments/assets/e023c8b2-ad17-4c5a-bb7b-449d5aee6b7e



https://github.com/user-attachments/assets/dc1b4995-66dd-48c4-ac96-b4f8c4cd7f27







