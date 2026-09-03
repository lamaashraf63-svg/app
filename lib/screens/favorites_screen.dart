import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'explore_screen.dart';
import 'cart_screen.dart';
import 'account_screen.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Favorite',
          style: TextStyle(color: Color(0xFF181725), fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Divider(height: 1, color: Color(0xFFE2E2E2)),
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: [
                  _buildFavItem('Sprite Can', '325ml, Price', '\$1.50', 'assets/images/apple.png'),
                  _buildFavItem('Diet Coke', '355ml, Price', '\$1.99', 'assets/images/banana.png'),
                  _buildFavItem('Apple & Grape Juice', '2L, Price', '\$15.50', 'assets/images/apple.png'),
                  _buildFavItem('Coca Cola Can', '325ml, Price', '\$4.99', 'assets/images/banana.png'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                width: double.infinity,
                height: 58,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF53B175),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(19),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const CartScreen()),
                    );
                  },
                  child: const Text(
                    'Add All To Cart',
                    style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 3,
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
          if (index == 0) {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
          } else if (index == 1) {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ExploreScreen()));
          } else if (index == 2) {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const CartScreen()));
          } else if (index == 4) {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const AccountScreen()));
          }
        },
      ),
    );
  }

  Widget _buildFavItem(String title, String subtitle, String price, String imagePath) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Color(0xFFE2E2E2))),
      ),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            width: 50,
            height: 50,
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) =>
                const Icon(Icons.local_drink, size: 40, color: Colors.grey),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Color(0xFF181725))),
                const SizedBox(height: 4),
                Text(subtitle, style: const TextStyle(color: Color(0xFF7C7C7C), fontSize: 12)),
              ],
            ),
          ),
          Text(price, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Color(0xFF181725))),
          const SizedBox(width: 10),
          const Icon(Icons.arrow_forward_ios, size: 14, color: Color(0xFF181725)),
        ],
      ),
    );
  }
}