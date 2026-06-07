import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'theme/app_theme.dart';
import 'screens/auth/login_role_screen.dart';
import 'screens/seller/seller_dashboard.dart';
import 'screens/buyer/buyer_dashboard.dart';

void main() {
  runApp(const CrochtaleApp());
}

class CrochtaleApp extends StatelessWidget {
  const CrochtaleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crochtale',
      theme: AppTheme.lightTheme,
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/login_role': (context) => const LoginRoleScreen(),
        '/seller_dashboard': (context) => const SellerDashboard(),
        '/buyer_dashboard': (context) => const BuyerDashboard(),
      },
    );
  }
}