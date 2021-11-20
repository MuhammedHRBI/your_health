import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseManager{
  dynamic userData;
   static final _databaseReference = FirebaseFirestore.instance;
  final CollectionReference profileList = _databaseReference.collection("Faculty");

      Future updateUserList(String name, String department,String image, int phone, String uid) async {
    return await profileList.doc(uid).update({'name': name, 'department': department,'image': image, 'phone': phone});
  }

    Future getUserList() async {
      
      List itemsList = [];

      try {
        await profileList.get().then((querySnapshot) {
          querySnapshot.docs.forEach((element) {
            itemsList.add(element.data());
           });
        });
        return itemsList;
      } catch(e) {
        return null;
      }
    }
}