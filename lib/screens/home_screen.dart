import 'package:flutter/material.dart';
import 'explore_screen.dart';
import 'product_detail_screen.dart';
import 'cart_screen.dart';
import 'favorites_screen.dart';
import 'account_screen.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeContentTab(),
    const ExploreScreen(),
    const CartScreen(), 
    const FavouriteScreen(),
  const AccountScreen(),
    const Center(child: Text('Favourite Screen', style: TextStyle(fontSize: 24))),
    const Center(child: Text('Account Screen', style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: const Color(0xFF53B175),
        unselectedItemColor: const Color(0xFF181B19),
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.explore_outlined), label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: 'Favourite'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Account'),
        ],
      ),
    );
  }
}

class HomeContentTab extends StatelessWidget {
  const HomeContentTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/images/carrot_logo.png', width: 24, height: 24),
                  const SizedBox(width: 8),
                  const Text(
                    'Dhaka, Banassre',
                    style: TextStyle(
                      color: Color(0xFF4C4F4D),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFF2F3F2),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Search Store',
                  hintStyle: TextStyle(color: Color(0xFF7C7C7C), fontSize: 14),
                  prefixIcon: Icon(Icons.search, color: Color(0xFF181B19)),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'assets/images/banner.png',
                width: double.infinity,
                height: 115,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Exclusive Offer',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF181B19),
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF53B175),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 220,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildProductCard(
                    context: context,
                    imagePath: 'assets/images/banana.png',
                    title: 'Organic Bananas',
                    subtitle: '7pcs, Priceg',
                    price: '\$4.99',
                  ),
                  const SizedBox(width: 15),
                  _buildProductCard(
                    context: context,
                    imagePath: 'assets/images/apple.png',
                    title: 'Red Apple',
                    subtitle: '1kg, Priceg',
                    price: '\$4.99',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Best Selling',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF181B19),
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF53B175),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 220,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildProductCard(
                    context: context,
                    imagePath: 'assets/images/pepper.png',
                    title: 'Bell Pepper Red',
                    subtitle: '1kg, Priceg',
                    price: '\$4.99',
                  ),
                  const SizedBox(width: 15),
                  _buildProductCard(
                    context: context,
                    imagePath: 'assets/images/ginger.png',
                    title: 'Ginger',
                    subtitle: '250gm, Priceg',
                    price: '\$4.99',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget _buildProductCard({
    required BuildContext context,
    required String imagePath,
    required String title,
    required String subtitle,
    required String price,
  }) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ProductDetailScreen()),
        );
      },
      borderRadius: BorderRadius.circular(18),
      child: Container(
        width: 163,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFE2E2E2)),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Center(
                child: Image.asset(imagePath, fit: BoxFit.contain),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF181B19),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              subtitle,
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xFF7C7C7C),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF181B19),
                  ),
                ),
                Container(
                  width: 45.5,
                  height: 45.5,
                  decoration: BoxDecoration(
                    color: const Color(0xFF53B175),
                    borderRadius: BorderRadius.circular(17),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.add, color: Colors.white),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ProductDetailScreen()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}