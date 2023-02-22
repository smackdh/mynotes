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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Whats up bitch"),
        ),
        body: Column(
          children: [
            TextField(),
            TextField(),
            TextButton(
              onPressed: () async {},
              child: const Text('Register'),
            ),
          ],
        ));
  }
}
