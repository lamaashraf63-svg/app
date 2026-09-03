import 'package:flutter/material.dart';

class OrderFailedScreen extends StatelessWidget {
  const OrderFailedScreen({super.key});

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
            Image.asset('assets/images/groceries.png', height: 220),
            const SizedBox(height: 30),
            const Text(
              'Oops! Order Failed',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Color(0xFF181B20)),
            ),
            const SizedBox(height: 15),
            const Text(
              'Something went tembly wrong.',
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
                  'Please Try Again',
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