import 'package:flutter/material.dart';
import 'home_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 1. خلفية صورة الراجل
          Positioned.fill(
            child: Image.asset(
              'assets/images/onboarding_background.png',
              fit: BoxFit.cover,
            ),
          ),
          
          // 2. طبقة تظليل سوداء شفافة
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.3),
            ),
          ),

          // 3. المحتوى (الجمل والزرار)
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/carrot_logo.png', 
                    width: 48, 
                    height: 48,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Welcome\nto our store',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      height: 1.1,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Get your groceries in as fast as one hour',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 40),
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        'Get Started',
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