class Teacher {
  int? id;
  String? industry;
  String? location;
  String? phoneNumber;
  String? teacherName;

  Teacher(
      {required this.id,
      required this.industry,
      required this.location,
      required this.phoneNumber,
      required this.teacherName});

  Teacher.fromJson(Map<String, dynamic> json){
    id = json["id"];
    industry = json["industry"];
    location = json["location"];
    phoneNumber = json["phoneNumber"];
    teacherName = json["teacherName"];
  }
}


// api = https://retoolapi.dev/3PX2qw/data