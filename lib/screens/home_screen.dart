import 'package:flutter/material.dart';
import 'cart_screen.dart';
import 'explore_screen.dart';
import 'favorites_screen.dart';
import 'account_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Center(
                child: Image.asset('assets/images/carrot_logo.png', width: 30, height: 30),
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_on, color: Color(0xFF4C4F4D), size: 20),
                  SizedBox(width: 8),
                  Text(
                    'Dhaka, Banasree',
                    style: TextStyle(
                      color: Color(0xFF4C4F4D),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 52,
                decoration: BoxDecoration(
                  color: const Color(0xFFF2F3F2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.search, color: Color(0xFF181B20)),
                    SizedBox(width: 10),
                    Text(
                      'Search Store',
                      style: TextStyle(
                        color: Color(0xFF7C7C7C),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 115,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xFFEBEBEB),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Fresh Vegetables',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF181B20),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Get Up To 40% OFF',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF53B175),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Exclusive Offer',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF181B20),
                    ),
                  ),
                  const Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF53B175),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 240,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ProductCard(imagePath: 'assets/images/banana.png', name: 'Organic Bananas', weight: '7pcs, Priceg', price: '\$4.99'),
                    SizedBox(width: 15),
                    ProductCard(imagePath: 'assets/images/apple.png', name: 'Red Apple', weight: '1kg, Priceg', price: '\$4.99'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF53B175),
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
        onTap: (index) {
          if (index == 1) {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ExploreScreen()));
          } else if (index == 2) {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const CartScreen()));
          } else if (index == 3) {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const FavoritesScreen()));
          } else if (index == 4) {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const AccountScreen()));
          }
        },
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final String weight;
  final String price;

  const ProductCard({super.key, required this.imagePath, required this.name, required this.weight, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 173,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFE2E2E2)),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Center(
              child: Image.asset(imagePath, height: 80),
            ),
          ),
          const SizedBox(height: 10),
          Text(name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Color(0xFF181B20))),
          const SizedBox(height: 5),
          Text(weight, style: const TextStyle(color: Color(0xFF7C7C7C), fontSize: 12)),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(price, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Color(0xFF181B20))),
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  color: const Color(0xFF53B175),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Icon(Icons.add, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}