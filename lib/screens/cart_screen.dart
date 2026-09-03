import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'explore_screen.dart';
import 'favorites_screen.dart';
import 'account_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'My Cart',
          style: TextStyle(color: Color(0xFF181B20), fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: const [
                  CartItem(image: 'assets/images/pepper.png', name: 'Bell Pepper Red', weight: '1kg, Price', price: '\$4.99'),
                  Divider(),
                  CartItem(image: 'assets/images/egg_carton.png', name: 'Egg Chicken Red', weight: '4pcs, Price', price: '\$1.99'),
                  Divider(),
                  CartItem(image: 'assets/images/banana.png', name: 'Organic Bananas', weight: '12kg, Price', price: '\$3.00'),
                  Divider(),
                  CartItem(image: 'assets/images/ginger.png', name: 'Ginger', weight: '250gm, Price', price: '\$2.99'),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 67,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF53B175),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(19),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SizedBox(width: 20),
                    Text(
                      'Go to Checkout',
                      style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        '\$12.96',
                        style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
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

class CartItem extends StatelessWidget {
  final String image;
  final String name;
  final String weight;
  final String price;

  const CartItem({super.key, required this.image, required this.name, required this.weight, required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          SizedBox(width: 70, height: 70, child: Image.asset(image)),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                const SizedBox(height: 5),
                Text(weight, style: const TextStyle(color: Color(0xFF7C7C7C), fontSize: 14)),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFFE2E2E2)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Icon(Icons.remove, color: Color(0xFFB3B3B3)),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Text('1', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFFE2E2E2)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Icon(Icons.add, color: Color(0xFF53B175)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.close, color: Color(0xFFB3B3B3)),
              const SizedBox(height: 35),
              Text(price, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            ],
          ),
        ],
      ),
    );
  }
}