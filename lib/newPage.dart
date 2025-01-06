import 'package:flutter/material.dart';

class newPage extends StatelessWidget {
  const newPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My New Screen'),
      ),
      body: const Center(
        child: Text(
          'Welcome to My New Screen!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}