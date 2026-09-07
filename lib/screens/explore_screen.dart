import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> categories = [
      {
        'title': 'Fresh Fruits\n& Vegetable',
        'image': 'assets/images/groceries.png',
        'color': const Color(0xFF53B175),
        'bgColor': const Color(0xFFEEF7F1),
      },
      {
        'title': 'Cooking Oil\n& Ghee',
        'image': 'assets/images/oil.png',
        'color': const Color(0xFFF8A44C),
        'bgColor': const Color(0xFFFFF6EE),
      },
      {
        'title': 'Meat & Fish',
        'image': 'assets/images/meat.png',
        'color': const Color(0xFFF7A593),
        'bgColor': const Color(0xFFFDE8E4),
      },
      {
        'title': 'Bakery & Snacks',
        'image': 'assets/images/bakery.png',
        'color': const Color(0xFFD3B0E0),
        'bgColor': const Color(0xFFF4ECF7),
      },
      {
        'title': 'Dairy & Eggs',
        'image': 'assets/images/dairy.png',
        'color': const Color(0xFFFDE598),
        'bgColor': const Color(0xFFFFF8E5),
      },
      {
        'title': 'Beverages',
        'image': 'assets/images/beverages.png',
        'color': const Color(0xFFB7DFF5),
        'bgColor': const Color(0xFFEAF5FC),
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Find Products',
          style: TextStyle(
            color: Color(0xFF181B19),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
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
            Expanded(
              child: GridView.builder(
                itemCount: categories.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 0.95,
                ),
                itemBuilder: (context, index) {
                  final cat = categories[index];
                  return Container(
                    decoration: BoxDecoration(
                      color: cat['bgColor'],
                      border: Border.all(color: (cat['color'] as Color).withOpacity(0.5)),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                            cat['image'],
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Text(
                          cat['title'],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF181B19),
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
    );
  }
}