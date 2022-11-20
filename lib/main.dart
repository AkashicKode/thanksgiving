import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const Thanksgiving());
}

class Thanksgiving extends StatelessWidget {
  const Thanksgiving({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: const Home(),
      title: 'Thanksgiving Menu',
    );
  }
}
