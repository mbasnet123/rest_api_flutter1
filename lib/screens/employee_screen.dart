import 'package:flutter/material.dart';
import 'package:rest_api_flutter1/services/employee_services.dart';

import '../models/employee.dart';

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
        title: const Text("Employee Data"),
      ),
      body: Column(
        children: [
          // ElevatedButton(onPressed: (){
          //   // _fetchEmployeeData();
          //   // EmployeeServices().getAllEmployeeData();
          //   print(EmployeeServices().getAllEmployeeData(),);
          // }, child: const Text("Click to get employee data"),),
          Expanded(
            child: FutureBuilder(
              future: EmployeeServices().getAllEmployeeData(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Center(
                    child: Text("Couldn't fetch data. Please try again!"),
                  );
                }
                if (snapshot.hasData) {
                  var data = snapshot.data as List<Employee>;
                  return ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(backgroundImage: NetworkImage(data[index].avatar!),),
                        title: Text("${data[index].first_name!} ${data[index].last_name!}"),
                        subtitle: Text("${data[index].email!}"),
                      );
                    },
                  );
                }
                else{
                  return Center(child: CircularProgressIndicator(),);
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
