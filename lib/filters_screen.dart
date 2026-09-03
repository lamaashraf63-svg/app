import 'package:flutter/material.dart';

class FiltersScreen extends StatelessWidget {
  const FiltersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Color(0xFF181B20)),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: const Text(
          'Filters',
          style: TextStyle(color: Color(0xFF181B20), fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Categories', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF181B20))),
            const SizedBox(height: 15),
            CheckboxListTile(
              title: const Text('Eggs', style: TextStyle(color: Color(0xFF53B175), fontWeight: FontWeight.w600)),
              value: true,
              onChanged: (val) {},
              activeColor: const Color(0xFF53B175),
              controlAffinity: ListTileControlAffinity.leading,
              contentPadding: EdgeInsets.zero,
            ),
            CheckboxListTile(
              title: const Text('Noodles & Pasta', style: TextStyle(color: Color(0xFF181B20))),
              value: false,
              onChanged: (val) {},
              activeColor: const Color(0xFF53B175),
              controlAffinity: ListTileControlAffinity.leading,
              contentPadding: EdgeInsets.zero,
            ),
            CheckboxListTile(
              title: const Text('Chips & Crisps', style: TextStyle(color: Color(0xFF181B20))),
              value: false,
              onChanged: (val) {},
              activeColor: const Color(0xFF53B175),
              controlAffinity: ListTileControlAffinity.leading,
              contentPadding: EdgeInsets.zero,
            ),
            const SizedBox(height: 30),
            const Text('Brand', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF181B20))),
            const SizedBox(height: 15),
            CheckboxListTile(
              title: const Text('Individual Collection', style: TextStyle(color: Color(0xFF181B20))),
              value: false,
              onChanged: (val) {},
              activeColor: const Color(0xFF53B175),
              controlAffinity: ListTileControlAffinity.leading,
              contentPadding: EdgeInsets.zero,
            ),
            CheckboxListTile(
              title: const Text('Cocola', style: TextStyle(color: Color(0xFF53B175), fontWeight: FontWeight.w600)),
              value: true,
              onChanged: (val) {},
              activeColor: const Color(0xFF53B175),
              controlAffinity: ListTileControlAffinity.leading,
              contentPadding: EdgeInsets.zero,
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
                  'Apply Filter',
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}