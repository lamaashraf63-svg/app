import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Color(0xFF181B20)),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.ios_share, color: Color(0xFF181B20)),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              height: 220,
              color: Colors.grey.shade100,
              child: Center(
                child: Image.asset('assets/images/apple.png', height: 160),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, -5),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Naturel Red Apple',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF181B20)),
                      ),
                      Icon(Icons.favorite_border, color: Color(0xFF7C7C7C)),
                    ],
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    '1kg, Priceg',
                    style: TextStyle(color: Color(0xFF7C7C7C), fontSize: 16),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.remove, size: 24, color: Color(0xFF7C7C7C)),
                          const SizedBox(width: 15),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                            decoration: BoxDecoration(
                              border: Border.all(color: const Color(0xFFE2E2E2)),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Text('1', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          ),
                          const SizedBox(width: 15),
                          const Icon(Icons.add, size: 24, color: Color(0xFF53B175)),
                        ],
                      ),
                      const Text(
                        '\$4.99',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF181B20)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  const Divider(),
                  const ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text('Product Detail', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    trailing: Icon(Icons.keyboard_arrow_down),
                  ),
                  const Text(
                    'Apples are nutritious. Apples may be good for weight loss. apples may be good for heart health. As part of a healthful and varied diet.',
                    style: TextStyle(color: Color(0xFF7C7C7C), fontSize: 13, height: 1.5),
                  ),
                  const Spacer(),
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
                      child: const Text(
                        'Add To Basket',
                        style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}