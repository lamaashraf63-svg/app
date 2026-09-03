import 'package:flutter/material.dart';

class OrderAcceptedScreen extends StatelessWidget {
  const OrderAcceptedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                color: Color(0xFF53B175),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.check, color: Colors.white, size: 60),
            ),
            const SizedBox(height: 40),
            const Text(
              'Your Order has been accepted',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Color(0xFF181B20)),
            ),
            const SizedBox(height: 15),
            const Text(
              'Your items has been placcd and is on it\'s way to being processed',
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xFF7C7C7C), fontSize: 16),
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
                  'Track Order',
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            const SizedBox(height: 15),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Back to home',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF181B20)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}