import 'package:flutter/material.dart';

class MyFABWidget extends StatelessWidget {
  final VoidCallback onPressed; // Add a callback function
  const MyFABWidget({Key? key, required this.onPressed}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed, // Use the callback function
      backgroundColor: Colors.pink,
      child: const Icon(Icons.thumb_up),
    );
  }
}