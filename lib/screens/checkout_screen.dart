import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Color(0xFF181725)),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Checkout',
          style: TextStyle(color: Color(0xFF181725), fontWeight: FontWeight.bold, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Divider(height: 1, color: Color(0xFFE2E2E2)),
            _buildOptionTile('Delivery', 'Select Method'),
            _buildOptionTile('Pament', '💳'),
            _buildOptionTile('Promo Code', 'Pick discount'),
            _buildOptionTile('Total Cost', '\$13.97'),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: const Text(
                'By placing an order you agree to our Terms And Conditions',
                style: TextStyle(color: Color(0xFF7C7C7C), fontSize: 12),
              ),
            ),
            const SizedBox(height: 15),
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
                    Navigator.pushReplacementNamed(context, '/order_accepted');
                  },
                  child: const Text(
                    'Place Order',
                    style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionTile(String title, String subtitle) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Color(0xFFE2E2E2))),
      ),
      child: ListTile(
        title: Text(title, style: const TextStyle(color: Color(0xFF7C7C7C), fontSize: 15, fontWeight: FontWeight.w600)),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(subtitle, style: const TextStyle(color: Color(0xFF181725), fontWeight: FontWeight.bold, fontSize: 14)),
            const SizedBox(width: 8),
            const Icon(Icons.arrow_forward_ios, size: 14, color: Color(0xFF181725)),
          ],
        ),
      ),
    );
  }
}