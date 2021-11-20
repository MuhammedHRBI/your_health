import 'package:flutter/material.dart';
import 'package:your_health/services/database_manager.dart';

class Appointment extends StatefulWidget {
  const Appointment({Key? key}) : super(key: key);

  @override
  _Appointment createState() => _Appointment();
}

class _Appointment extends State<Appointment> {

  List userProfilesList = [];
  int counter = 0;
  String userID ='';
  @override
  void initState() {
    super.initState();
    fetchDatabaseList();
  }



  fetchDatabaseList() async {
    dynamic resultant = await DatabaseManager().getUserList();

    if (resultant == null) {
      print('Unable to retrieve');
    } else {
      setState(() {
        userProfilesList = resultant;
      });
    }
  }
    updateData(String name, String department,bool isBooked,String image, int phone, String userID) async {
    await DatabaseManager().updateUserList(name, department,isBooked , image, phone, userID);
    fetchDatabaseList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My Appointments"),
          backgroundColor: Colors.lightBlue[400],
        ),
        body: Container(
            child: ListView.builder(
                itemCount: userProfilesList.length,
                itemBuilder: (context, index) {
                  if (userProfilesList[index]['isBooked']) {return Card(
                    child: ListTile(
                      title: Text(userProfilesList[index]['name']),
                      subtitle: Text(userProfilesList[index]['department']),
                      leading: CircleAvatar(
                        child: Image(
                          image: AssetImage('images/${userProfilesList[index]['image']}.png'),
                        ),
                      ),
                      trailing: Text('${userProfilesList[index]['phone']}'),
                    ),
                  );
                  }
                  else {
                    return Container();
                  }
                })));
  }
}