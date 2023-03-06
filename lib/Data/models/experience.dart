import 'dart:convert';

// Experience experienceFromJson(String str) => Experience.fromJson(json.decode(str));

// String experienceToJson(Experience data) => json.encode(data.toJson());

class Experience {
  Experience({
    required this.id,
    required this.degrees,
    required this.degreeImg,
    required this.workedArea,
  });

  String id;
  List<dynamic> degrees;
  List<dynamic> degreeImg;
  String workedArea;

  factory Experience.fromJson(Map<String, dynamic> json) => Experience(
        id: json["_id"],
        degrees: List<dynamic>.from(json["degrees"].map((x) => x)),
        degreeImg: List<dynamic>.from(json["degreeImg"].map((x) => x)),
        workedArea: json["workedArea"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "degrees": List<dynamic>.from(degrees.map((x) => x)),
        "degreeImg": List<dynamic>.from(degreeImg.map((x) => x)),
        "workedArea": workedArea,
      };
}
