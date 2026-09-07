import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'home_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Center(
                child: Image.asset(
                  'assets/images/carrot_logo.png',
                  width: 48,
                  height: 48,
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF181B19),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Enter your credentials to continue',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF7C7C7C),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'Username',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF7C7C7C),
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Afsar Hossen Shuvo',
                  hintStyle: TextStyle(color: Color(0xFF181B19), fontSize: 16),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFE2E2E2)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF53B175)),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                'Email',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF7C7C7C),
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'imshuvo97@gmail.com',
                  hintStyle: TextStyle(color: Color(0xFF181B19), fontSize: 16),
                  suffixIcon: Icon(Icons.check, color: Color(0xFF53B175)),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFE2E2E2)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF53B175)),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                'Password',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF7C7C7C),
                ),
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: '••••••••',
                  hintStyle: const TextStyle(color: Color(0xFF181B19), fontSize: 16),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.visibility_off, color: Color(0xFF7C7C7C)),
                    onPressed: () {},
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFE2E2E2)),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF53B175)),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              RichText(
                text: const TextSpan(
                  text: 'By continuing you agree to our ',
                  style: TextStyle(color: Color(0xFF7C7C7C), fontSize: 13),
                  children: [
                    TextSpan(
                      text: 'Terms of Service',
                      style: TextStyle(color: Color(0xFF53B175)),
                    ),
                    TextSpan(text: ' and '),
                    TextSpan(
                      text: 'Privacy Policy.',
                      style: TextStyle(color: Color(0xFF53B175)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
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
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const HomeScreen()),
                    );
                  },
                  child: const Text(
                    'Sing Up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(color: Color(0xFF181B19), fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginScreen()),
                      );
                    },
                    child: const Text(
                      'Singup',
                      style: TextStyle(color: Color(0xFF53B175), fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}