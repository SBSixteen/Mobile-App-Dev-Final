import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_final/Providers/AuthenticationProvider.dart';
import 'package:flutter_final/Providers/Test_Provider.dart';
import 'package:flutter_final/constants.dart';

class SignIn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            controller: email,
            decoration: const InputDecoration(label: Text("Email")),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            decoration: const InputDecoration(label: Text("Password")),
            controller: password,
          ),
        ),
        InkWell(
          onTap: () {
            TestService().WritePost(email.text, password.text);
          },
          child: const Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Add Post"),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            AuthenticationProvider().signInWithGoogle();
          },
          child: const Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Sign in with Google"),
            ),
          ),
        )
      ],
    ));
  }
}
