import 'package:flutter/material.dart';
import 'package:mynotes/services/auth/auth_service.dart';
import 'package:mynotes/views/constants/routes.dart';

class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({super.key});

  @override
  State<VerifyEmailView> createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VerifyEmail'),
      ),
      body: Container(
          color: Colors.deepOrange[50],
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                  'We have sent you a verification email, please click the link provided in the email and then proceed to login.',
                  style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontSize: 26,
                      decoration: TextDecoration.none),
                  textAlign: TextAlign.center),
              const Text(
                "If you haven't received any verification email, click the button below.",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    decoration: TextDecoration.none),
                textAlign: TextAlign.center,
              ),
              TextButton(
                onPressed: () async {
                  AuthService.firebase().currentUser;
                  AuthService.firebase().sendEmailVerification();
                },
                child: const Text('Send a new email verification'),
              ),
              TextButton(
                  onPressed: () async {
                    await AuthService.firebase().logOut();
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        registerRoute, (route) => false);
                  },
                  child: const Text('Restart'))
            ],
          ))),
    );
  }
}
