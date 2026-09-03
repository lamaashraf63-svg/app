import 'package:flutter/material.dart';
import 'screens/onboarding_screen.dart';
import 'screens/home_screen.dart';
import 'screens/explore_screen.dart';
import 'screens/cart_screen.dart';
import 'screens/favorites_screen.dart';
import 'screens/account_screen.dart';
import 'screens/checkout_screen.dart';
import 'screens/order_accepted_screen.dart';
import 'screens/product_detail_screen.dart'; // استدعاء شاشة التفاصيل

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Online Groceries',
      initialRoute: '/',
      routes: {
        '/': (context) => const OnboardingScreen(),
        '/home': (context) => const HomeScreen(),
        '/explore': (context) => const ExploreScreen(),
        '/cart': (context) => const CartScreen(),
        '/favorites': (context) => const FavoritesScreen(),
        '/account': (context) => const AccountScreen(),
        '/checkout': (context) => const CheckoutScreen(),
        '/order_accepted': (context) => const OrderAcceptedScreen(),
        '/product_detail': (context) => const ProductDetailScreen(), // مسار شاشة التفاصيل
      },
    );
  }
}