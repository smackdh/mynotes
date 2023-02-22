import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Test Title!',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: const HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Whats up bitch"),
        ),
        body: Center(
          child: TextButton(
            onPressed: () {},
            child: const Text('Register'),
          ),
        ));
  }
}
