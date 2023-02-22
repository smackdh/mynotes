import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

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
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Whats up bitch"),
        ),
        body: Column(
          children: [
            TextField(
                controller: _email,
                decoration:
                    const InputDecoration(hintText: 'Enter your email')),
            TextField(
              controller: _password,
              decoration:
                  const InputDecoration(hintText: 'Enter your password'),
            ),
            TextButton(
              onPressed: () async {},
              child: const Text('Register'),
            ),
          ],
        ));
  }
}
