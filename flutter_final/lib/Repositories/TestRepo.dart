import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_final/Models/Posts.dart';

class TestRepo {
  TestRepo._internal();

  static final TestRepo _instance = TestRepo._internal();

  factory TestRepo() {
    return _instance;
  }

  Future<List<Posts>> getPostsFromFirebase() async {
    final qs =
        await FirebaseFirestore.instance.collection('Posts').get();

    print("here");
    print(qs.docs.length);

    List<Posts> posts = qs.docs.map((e) {
      var k = e.data();
      Posts p = Posts(k["Title"], k["Description"]);
      print(p.description);
      return p;
    },).toList();
    if(qs.docs.isEmpty){
      return [];
    }
    return posts;
  }
}
