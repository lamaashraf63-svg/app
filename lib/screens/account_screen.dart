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
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  SizedBox(
                    width: 65,
                    height: 65,
                    child: ClipOval(
                      child: Image.asset('assets/images/person.png', fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Row(
                        children: [
                          Text(
                            'Afsar Hossen',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 5),
                          Icon(Icons.edit, size: 16, color: Color(0xFF53B175)),
                        ],
                      ),
                      SizedBox(height: 5),
                      Text(
                        'imshuvo97@gmail.com',
                        style: TextStyle(color: Color(0xFF7C7C7C), fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(thickness: 1),
            const AccountTile(icon: Icons.shopping_bag_outlined, title: 'Orders'),
            const AccountTile(icon: Icons.card_membership, title: 'My Details'),
            const AccountTile(icon: Icons.location_on_outlined, title: 'Delivery Address'),
            const AccountTile(icon: Icons.payment, title: 'Payment Methods'),
            const AccountTile(icon: Icons.local_offer_outlined, title: 'Promo Code'),
            const AccountTile(icon: Icons.notifications_none, title: 'Notifications'),
            const AccountTile(icon: Icons.help_outline, title: 'Help'),
            const AccountTile(icon: Icons.info_outline, title: 'About'),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(20),
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
                        style: TextStyle(color: Color(0xFF53B175), fontSize: 18, fontWeight: FontWeight.w600),
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
}

class AccountTile extends StatelessWidget {
  final IconData icon;
  final String title;

  const AccountTile({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon, color: const Color(0xFF181B20)),
          title: Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Color(0xFF181B20)),
          onTap: () {},
        ),
        const Divider(thickness: 1, height: 1),
      ],
    );
  }
}