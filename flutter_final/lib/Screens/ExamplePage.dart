import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_final/Providers/Test_Provider.dart';
import 'package:flutter_final/constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExamplePage extends ConsumerWidget {

  @override
  Widget build(BuildContext context, WidgetRef ref) {
  
  final posts = ref.watch(getPostsProvider);
  
  return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              icon: const Icon(Icons.exit_to_app))
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text(constants.someUser!.displayName!),
              posts.when(data: (data) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(data[index].title),
                    subtitle: Text(data[index].description),
                  );
                },);
              }, error: (error, stackTrace) {
                print(error);
                return Text("Errors");
              }, loading: () {
                return CircularProgressIndicator();
              },)
            ],
          ),
        ),
      ),
    );
  
  }
}
