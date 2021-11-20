import 'package:flutter/material.dart';
import 'package:your_health/services/database_manager.dart';

class Faculty extends StatefulWidget {
  const Faculty({Key? key}) : super(key: key);

  @override
  _Faculty createState() => _Faculty();
}

class _Faculty extends State<Faculty> {

  List userProfilesList = [];
  int counter = 0;
  List<String> myList = ['ZgtSEKQR0mQgF3Tpo7AL','kpFnHLn0XrbFy6ehimx7','jGiT3FEbWzkHVMIvAYY0'];
  String userID ='';
  @override
  void initState() {
    userID = myList[counter];
    counter >= myList.length ? counter = counter : counter++;
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
    updateData(String name, String department,String image, int phone, String userID) async {
    await DatabaseManager().updateUserList(name, department, image, phone, userID);
    fetchDatabaseList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Faculty"),
          backgroundColor: Colors.lightBlue[400],
        ),
        body: Container(
            child: ListView.builder(
                itemCount: userProfilesList.length,
                itemBuilder: (context, index) {
                  return Card(
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
                })));
  }
}