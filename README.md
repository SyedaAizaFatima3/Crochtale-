# Crochtale - Flutter Handmade Crochet Marketplace

A beautiful Flutter application for buying and selling handmade crochet products with features for both sellers and buyers.

## Features

### 🔐 Authentication
- Sign In / Sign Up with role selection (Seller or Buyer)
- Secure authentication system
- User profile management

### 👤 User Roles

#### Seller Features
- Dashboard with sales overview
- Product management (Add, Edit, Delete)
- Inventory tracking
- Sales statistics
- Chat with buyers

#### Buyer Features
- Browse products from multiple sellers
- Search and filter products
- Shopping cart with quantity management
- Secure checkout process
- Order placement and confirmation
- Chat with sellers

### 🛍️ Product Management
- **6+ Products per Seller**: Beautiful crochet items including:
  - Amigurumi toys and teddy bears
  - Blankets and scarves
  - Accessories (booties, headbands, hats, gloves)
  - Decorative items (pillows, wall hangings, dream catchers)
- Product ratings and reviews
- Product tags and categories
- Stock management

### 🛒 Shopping & Checkout
- Shopping cart functionality
- Quantity adjustment
- Shipping cost calculation
- Multiple payment methods support
- Order confirmation with order number
- Order tracking

### 💬 Chat System
- Real-time messaging between buyers and sellers
- Conversation history
- Timestamp on messages
- User-friendly interface

### 🎨 Design
- **Color Scheme**: Butter Yellow (#FFD93D) & White
- Clean, modern UI/UX
- Responsive design for all screen sizes
- Smooth animations and transitions

## Getting Started

### Prerequisites
- Flutter SDK 3.0.0 or higher
- Dart SDK
- An IDE (VS Code, Android Studio, or Xcode)

### Installation

1. **Clone the repository**
```bash
git clone https://github.com/SyedaAizaFatima3/crochtale-.git
cd crochtale-
```

2. **Install dependencies**
```bash
flutter pub get
```

3. **Run the app**
```bash
flutter run
```

### For iOS
```bash
cd ios
pod install
cd ..
flutter run
```

### For Android
Ensure you have Android Studio and an emulator/device set up, then:
```bash
flutter run
```

## App Flow

1. **Splash Screen** → Shows app logo and loads
2. **Login Role Screen** → Choose between Sign In/Sign Up and Seller/Buyer
3. **Sign In/Sign Up** → Create account or log in with role selection
4. **Dashboard** → Home screen with overview and statistics
5. **Product Browsing** → View and search for products
6. **Shopping Cart** → Manage cart items and quantities
7. **Checkout** → Enter shipping and payment details
8. **Order Confirmation** → Successful order placement message
9. **Chat** → Communicate with buyers/sellers

## Sample Data

The app comes pre-loaded with:
- **12 Sample Products** (6 for each seller)
- **Two Seller Accounts** for demo purposes
- **Mock Data** for orders and messages

## Technologies Used

- **Framework**: Flutter
- **Language**: Dart
- **UI Library**: Material Design 3
- **Architecture**: Service-based Architecture
- **State Management**: StatefulWidget

## Project Structure

```
lib/
├── main.dart
├── theme/
│   └── app_theme.dart
├── models/
│   ├── user_model.dart
│   ├── product_model.dart
│   ├── cart_item_model.dart
│   └── message_model.dart
├── services/
│   ├── auth_service.dart
│   ├── product_service.dart
│   ├── cart_service.dart
│   └── message_service.dart
└── screens/ (see screens directory for more)
```

## Contributing

Contributions are welcome! Please follow these steps:
1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License.

## Support

For support, please open an issue on GitHub.

## Author

Created with ❤️ by Crochtale Team

---

**Happy Shopping! 🧶✨**