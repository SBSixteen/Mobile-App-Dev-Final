import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_final/Providers/AuthenticationProvider.dart';
import 'package:flutter_final/Screens/ExamplePage.dart';
import 'package:flutter_final/Screens/ProductsPage.dart';
import 'package:flutter_final/Screens/SignIn.dart';
import 'package:flutter_final/Widgets/JobCard.dart';
import 'package:flutter_final/firebase_options.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_final/constants.dart';

void main() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

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

    int question_number = 2;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      home: Scaffold(
        body: question_number == 1 ? ProductsPage() : JobCard(),
      )
    );
  }
}