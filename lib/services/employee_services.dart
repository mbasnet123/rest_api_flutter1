import 'package:http/http.dart' as http;
import 'dart:convert';

class EmployeeServices{
  String baseUrl = "https://regres.in/api/";
  
  getAllEmployeeData() async {

    try{
      var response = await http.get(Uri.parse(baseUrl + "users?page=2"));
      if(response.statusCode == 200) {
        var data = response.body;
        var decodedData = jsonDecode(data);

        print(data);
      }
    }
    catch(e){
      throw Exception(e.toString());
    }
  }
}