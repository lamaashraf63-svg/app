import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    final List<Map<String, dynamic>> cartItems = [
      {
        'title': 'Organic Bananas',
        'subtitle': '7pcs, Priceg',
        'price': '\$4.99',
        'image': 'assets/images/banana.png',
        'quantity': 1,
      },
      {
        'title': 'Red Apple',
        'subtitle': '1kg, Priceg',
        'price': '\$4.99',
        'image': 'assets/images/apple.png',
        'quantity': 2,
      },
      {
        'title': 'Bell Pepper Red',
        'subtitle': '1kg, Priceg',
        'price': '\$5.99',
        'image': 'assets/images/pepper.png',
        'quantity': 1,
      },
      {
        'title': 'Ginger',
        'subtitle': '250gm, Priceg',
        'price': '\$2.99',
        'image': 'assets/images/ginger.png',
        'quantity': 1,
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'My Cart',
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
              padding: const EdgeInsets.all(20),
              itemCount: cartItems.length,
              separatorBuilder: (context, index) => const Divider(height: 30, color: Color(0xFFE2E2E2)),
              itemBuilder: (context, index) {
                final item = cartItems[index];
                return Row(
                  children: [
                    SizedBox(
                      width: 70,
                      height: 70,
                      child: Image.asset(item['image'], fit: BoxFit.contain),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                item['title'],
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF181B19),
                                ),
                              ),
                              const Icon(Icons.close, color: Color(0xFFB3B3B3), size: 20),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Text(
                            item['subtitle'],
                            style: const TextStyle(
                              fontSize: 14,
                              color: Color(0xFF7C7C7C),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 45,
                                    height: 45,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(17),
                                      border: Border.all(color: const Color(0xFFE2E2E2)),
                                    ),
                                    child: IconButton(
                                      icon: const Icon(Icons.remove, size: 16, color: Color(0xFFB3B3B3)),
                                      onPressed: () {},
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 15),
                                    child: Text(
                                      '${item['quantity']}',
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF181B19),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 45,
                                    height: 45,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(17),
                                      border: Border.all(color: const Color(0xFF53B175)),
                                    ),
                                    child: IconButton(
                                      icon: const Icon(Icons.add, size: 16, color: Color(0xFF53B175)),
                                      onPressed: () {},
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                item['price'],
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF181B19),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 10),
                    const Text(
                      'Go to Checkout',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: const Color(0xFF489E67),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text(
                        '\$12.96',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}