import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/images/profile.jpg',
                      width: 65,
                      height: 65,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              'Afsar Hossen',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF181B19),
                              ),
                            ),
                            SizedBox(width: 8),
                            Icon(
                              Icons.edit_outlined,
                              size: 18,
                              color: Color(0xFF53B175),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'imshuvo97@gmail.com',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF7C7C7C),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Divider(color: Color(0xFFE2E2E2), thickness: 1),

            
            Expanded(
              child: ListView(
                children: [
                  _buildAccountItem(icon: Icons.shopping_bag_outlined, title: 'Orders'),
                  _buildAccountItem(icon: Icons.badge_outlined, title: 'My Details'),
                  _buildAccountItem(icon: Icons.location_on_outlined, title: 'Delivery Address'),
                  _buildAccountItem(icon: Icons.payment_outlined, title: 'Payment Methods'),
                  _buildAccountItem(icon: Icons.local_offer_outlined, title: 'Promo Cord'),
                  _buildAccountItem(icon: Icons.notifications_none_outlined, title: 'Notifecations'),
                  _buildAccountItem(icon: Icons.help_outline, title: 'Help'),
                  _buildAccountItem(icon: Icons.info_outline, title: 'About'),
                ],
              ),
            ),

          
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                width: double.infinity,
                height: 67,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF2F3F2),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(19),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.logout, color: Color(0xFF53B175)),
                      SizedBox(width: 15),
                      Text(
                        'Log Out',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF53B175),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget _buildAccountItem({required IconData icon, required String title}) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon, color: const Color(0xFF181B19)),
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xFF181B19),
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            size: 16,
            color: Color(0xFF181B19),
          ),
          onTap: () {},
        ),
        const Divider(color: Color(0xFFE2E2E2), height: 1, indent: 20, endIndent: 20),
      ],
    );
  }
}