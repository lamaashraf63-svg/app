import 'package:flutter/material.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> favouriteItems = [
      {
        'title': 'Sprite Can',
        'subtitle': '325ml, Price',
        'price': '\$1.50',
        'image': 'assets/images/sprite.png',
      },
      {
        'title': 'Diet Coke',
        'subtitle': '355ml, Price',
        'price': '\$1.99',
        'image': 'assets/images/diet_coke.png',
      },
      {
        'title': 'Apple & Grape Juice',
        'subtitle': '2L, Price',
        'price': '\$15.50',
        'image': 'assets/images/apple_juice.png', 
      },
      {
        'title': 'Coca Cola Can',
        'subtitle': '325ml, Price',
        'price': '\$4.99',
        'image': 'assets/images/coca.png',
      },
      {
        'title': 'Pepsi Can',
        'subtitle': '330ml, Price',
        'price': '\$4.99',
        'image': 'assets/images/pepsi.png',
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Favorurite',
          style: TextStyle(
            color: Color(0xFF181B19),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              itemCount: favouriteItems.length,
              separatorBuilder: (context, index) => const Divider(height: 30, color: Color(0xFFE2E2E2)),
              itemBuilder: (context, index) {
                final item = favouriteItems[index];
                return Row(
                  children: [
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Image.asset(item['image'], fit: BoxFit.contain),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item['title'],
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF181B19),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            item['subtitle'],
                            style: const TextStyle(
                              fontSize: 14,
                              color: Color(0xFF7C7C7C),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          item['price'],
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF181B19),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: Color(0xFF181B19),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              width: double.infinity,
              height: 67,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF53B175),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(19),
                  ),
                  elevation: 0,
                ),
                onPressed: () {},
                child: const Text(
                  'Add All To Cart',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}