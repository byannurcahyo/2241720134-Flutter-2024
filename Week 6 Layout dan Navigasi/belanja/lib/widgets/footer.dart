import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      height: 50,
      child: const Center(
        child: Text(
          'Byan Nur Cahyo | 2241720134',
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
      ),
    );
  }
}
