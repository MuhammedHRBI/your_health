import 'package:flutter/material.dart';
import 'package:your_health/services/database_manager.dart';

class Book extends StatefulWidget {
  const Book({Key? key}) : super(key: key);

  @override
  _Book createState() => _Book();
}

class _Book extends State<Book> {

  List userProfilesList = [];

  get index => null;
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
          title: Text("Appointment Booking"),
          backgroundColor: Colors.lightBlue[400],
        ),
        body: Container(
            child: ListView.builder(
                itemCount: userProfilesList.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: GestureDetector(
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
                      onTap: () {showAlertDialog(context);}
                    ),
                  );
                })));
  }
  showAlertDialog(BuildContext context) {  
  
  AlertDialog alert = AlertDialog(  
    title: Text("Booking"),  
    content: Text("Do you want to book this appointment?"),  
    actions: <Widget>[  
       TextButton(
        child: Text("Yes"),
        onPressed: () async { 
  }
      ),
      TextButton(
        child: Text("No"),
        onPressed: () {  
      Navigator.of(context).pop();
    }, 
      )  
    ],  
  );  
   
  showDialog(  
    context: context,  
    builder: (BuildContext context) {  
      return alert;  
    },  
  );
  }
}