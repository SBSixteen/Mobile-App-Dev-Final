
// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_final/Models/Posts.dart';
import 'package:flutter_final/Repositories/TestRepo.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'Test_Provider.g.dart';

//dart run build_runner watch   
@riverpod
Future<List<Posts>> GetPosts(GetPostsRef ref){
  return TestService().getPosts();
}

class TestService{

  TestService._internal();

  static final TestService _instance =
      TestService._internal(); // Singleton instance

  factory TestService() {
    return _instance;
  }

  final TestRepo _testRepo = TestRepo();

  Future<List<Posts>> getPosts()async{
    return await _testRepo.getPostsFromFirebase();
  }

  void WritePost(String title, String desc){
    var db = FirebaseFirestore.instance;
    Posts P = Posts(title, desc);
    db.collection("Posts").add(P.toJson());
  }
}