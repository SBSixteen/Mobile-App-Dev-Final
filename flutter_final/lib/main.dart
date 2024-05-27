import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_final/Providers/AuthenticationProvider.dart';
import 'package:flutter_final/Screens/ExamplePage.dart';
import 'package:flutter_final/Screens/SignIn.dart';
import 'package:flutter_final/firebase_options.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_final/constants.dart';

void main() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(ProviderScope(child: MainApp()));
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<StatefulWidget> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {

  @override
  void initState() {
    super.initState();
    FirebaseAuth.instance.authStateChanges().listen((event) {
      setState(() {
        constants.someUser = event;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      home: Scaffold(
        body:constants.someUser == null ? SignIn() : ExamplePage(),
      )
    );
  }
}