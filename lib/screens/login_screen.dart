import 'package:flutter/material.dart';
import 'signup_screen.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              const SizedBox(height: 30),
              Center(
                child: Image.asset(
                  'assets/images/carrot_logo.png',
                  width: 48,
                  height: 48,
                ),
              ),
              const SizedBox(height: 60),
              const Text(
                'Loging',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF181B19),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Enter your emails and password',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF7C7C7C),
                ),
              ),
              const SizedBox(height: 40),
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
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFE2E2E2)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF53B175)),
                  ),
                ),
              ),
              const SizedBox(height: 30),
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
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(color: Color(0xFF181B19), fontSize: 14),
                  ),
                ),
              ),
              const SizedBox(height: 20),
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
                    'Log In',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t have an account?',
                    style: TextStyle(color: Color(0xFF181B19), fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignupScreen()),
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