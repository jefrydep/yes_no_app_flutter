 // To parse this JSON data, do
//
//     final yesNoModel = yesNoModelFromJson(jsonString);

import 'dart:convert';

class YesNoModel {
    YesNoModel({
        required this.answer,
        required this.forced,
        required this.image,
    });

    String answer;
    bool forced;
    String image;

    factory YesNoModel.fromRawJson(String str) => YesNoModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory YesNoModel.fromJson(Map<String, dynamic> json) => YesNoModel(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "answer": answer,
        "forced": forced,
        "image": image,
    };
}
