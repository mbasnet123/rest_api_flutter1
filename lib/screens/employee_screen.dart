import 'package:flutter/material.dart';
import 'package:rest_api_flutter1/services/employee_services.dart';

class EmployeeScreen extends StatelessWidget {
  const EmployeeScreen({super.key});

  // void _fetchEmployeeData() async{
  //   EmployeeServices services = EmployeeServices();
  //   await services.getAllEmployeeData();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Employee Data"),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            // _fetchEmployeeData();
            EmployeeServices().getAllEmployeeData();
          }, child: Text("Click to get employee data"))
        ],
      ),
    );
  }
}
