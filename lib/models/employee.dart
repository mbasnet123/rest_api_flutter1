class Employee{

int? id;
String? email;
String? first_name;
String? last_name;
String? avatar;

Employee({this.id, this.email, this.first_name, this.last_name, this.avatar});

Employee.fromJson(Map<String, dynamic> json){
  id = json["id"];
  email = json["email"];
  first_name = json["first_name"];
  last_name = json["last_name"];
  avatar = json["avatar"];
}
}





// {
// "id": 7,
// "email": "michael.lawson@reqres.in",
// "first_name": "Michael",
// "last_name": "Lawson",
// "avatar": "https://reqres.in/img/faces/7-image.jpg"
// }