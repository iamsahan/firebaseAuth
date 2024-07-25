import 'package:flutter/material.dart';
import '../../services/auth.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthServices _auth = AuthServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: ElevatedButton(
        child: const Text('Sign In Anonymously'),
        onPressed: () async {
          dynamic result = _auth.signInAnonymously();

          if (result == null) {
            print("Erroor anom sign");
          } else {
            print("sign in anom");
            print(result);
          }
        },
      ),
    );
  }
}
