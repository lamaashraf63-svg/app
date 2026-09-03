import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'cart_screen.dart';
import 'favorites_screen.dart';
import 'account_screen.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> categories = [
      {'title': 'Fresh Fruits & Vegetable', 'image': 'assets/images/groceries.png', 'color': const Color(0xFF53B175)},
      {'title': 'Cooking Oil & Ghee', 'image': 'assets/images/oil.png', 'color': const Color(0xFFF8A44C)},
      {'title': 'Meat & Fish', 'image': 'assets/images/meat.png', 'color': const Color(0xFFF7A593)},
      {'title': 'Bakery & Snacks', 'image': 'assets/images/bakery.png', 'color': const Color(0xFFD3B0E0)},
      {'title': 'Dairy & Eggs', 'image': 'assets/images/dairy.png', 'color': const Color(0xFFFDE598)},
      {'title': 'Beverages', 'image': 'assets/images/beverages.png', 'color': const Color(0xFFB7DFF5)},
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Find Products',
          style: TextStyle(color: Color(0xFF181B20), fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 10),
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
                    style: TextStyle(color: Color(0xFF7C7C7C), fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                itemCount: categories.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 0.9,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: categories[index]['color'].withOpacity(0.1),
                      border: Border.all(color: categories[index]['color'].withOpacity(0.5)),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Center(
                            child: Image.asset(categories[index]['image'], height: 70),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          categories[index]['title'],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color(0xFF181B20),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
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