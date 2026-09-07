import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFFF2F3F2),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Color(0xFF181B19)),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.ios_share, color: Color(0xFF181B19)),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 270,
            decoration: const BoxDecoration(
              color: Color(0xFFF2F3F2),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset('assets/images/apple.png', height: 190, fit: BoxFit.contain),
                Positioned(
                  bottom: 15,
                  child: Row(
                    children: [
                      Container(width: 20, height: 4, decoration: BoxDecoration(color: const Color(0xFF53B175), borderRadius: BorderRadius.circular(2))),
                      const SizedBox(width: 5),
                      Container(width: 10, height: 4, decoration: BoxDecoration(color: Colors.grey.shade400, borderRadius: BorderRadius.circular(2))),
                      const SizedBox(width: 5),
                      Container(width: 10, height: 4, decoration: BoxDecoration(color: Colors.grey.shade400, borderRadius: BorderRadius.circular(2))),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Naturel Red Apple',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF181B19),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.favorite_border, color: Color(0xFF7C7C7C)),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  const Text(
                    '1kg, Priceg',
                    style: TextStyle(fontSize: 16, color: Color(0xFF7C7C7C)),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.remove, color: Color(0xFFB3B3B3)),
                            onPressed: () {},
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                            decoration: BoxDecoration(
                              border: Border.all(color: const Color(0xFFE2E2E2)),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Text(
                              '1',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.add, color: Color(0xFF53B175)),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      const Text(
                        '\$4.99',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF181B19),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Divider(color: Color(0xFFE2E2E2)),
                  ExpansionTile(
                    title: const Text(
                      'Product Detail',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF181B19)),
                    ),
                    trailing: const Icon(Icons.keyboard_arrow_down, color: Color(0xFF181B19)),
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        child: Text(
                          'Apples Are Nutritious. Apples May Be Good For Weight Loss. Apples May Be Good For Your Heart. As Part Of A Healthy And Varied Diet.',
                          style: TextStyle(color: Color(0xFF7C7C7C), fontSize: 13, height: 1.5),
                        ),
                      ),
                    ],
                  ),
                  const Divider(color: Color(0xFFE2E2E2)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Nutritions',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF181B19)),
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: const Color(0xFFEBEBEB),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Text('100gr', style: TextStyle(color: Color(0xFF7C7C7C), fontSize: 10)),
                          ),
                          const SizedBox(width: 10),
                          const Icon(Icons.arrow_forward_ios, size: 16, color: Color(0xFF181B19)),
                        ],
                      ),
                    ],
                  ),
                  const Divider(color: Color(0xFFE2E2E2)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Review',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF181B19)),
                      ),
                      Row(
                        children: const [
                          Icon(Icons.star, color: Colors.amber, size: 18),
                          Icon(Icons.star, color: Colors.amber, size: 18),
                          Icon(Icons.star, color: Colors.amber, size: 18),
                          Icon(Icons.star, color: Colors.amber, size: 18),
                          Icon(Icons.star, color: Colors.amber, size: 18),
                          SizedBox(width: 10),
                          Icon(Icons.arrow_forward_ios, size: 16, color: Color(0xFF181B19)),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF53B175),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Add To Basket',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
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