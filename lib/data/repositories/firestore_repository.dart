import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tp3_firebase/data/models/question.dart';

class FireStoreRepository {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  Future<List> getQuestions() async {
    late List<dynamic> questionslist = [];
    try {
      print(" befor snap ");
      QuerySnapshot snapshot =
          await firebaseFirestore.collection('Questions').get();
      print(snapshot.docs);
      print(" after snap ");
      questionslist = snapshot.docs.map((e) => e.data()).toList();
      print(questionslist.length);
    } catch (er) {
      print(er);
    }

    return questionslist;
  }

  Future<void> addQuestion(Question question) {
    var val = firebaseFirestore.collection("Questions").add(question.toJson());
    return val;
  }
}
