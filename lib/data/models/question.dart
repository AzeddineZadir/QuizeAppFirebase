import 'dart:convert';

class Question {
  final String qstText;
  final String imageUrl;
  final bool ans;
  final String category;

  Question(
      {required this.qstText,
      required this.imageUrl,
      required this.ans,
      required this.category});

  /* Question(
      {required this.qstText,
      required this.imageUrl,
      required this.ans,
      required this.category});*/

  factory Question.fromJson(Map<String, dynamic> json) => Question(
        qstText: json['qst_text'],
        imageUrl: json['image_url'],
        ans: json['ans'],
        category: json['category'],
      );

  Map<String, dynamic> toJson() => {
        'qst_text': qstText,
        'image_url': imageUrl,
        'ans': ans,
        'category': category,
      };
}
