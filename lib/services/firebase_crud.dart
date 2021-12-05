import 'package:takeout/constants/imports.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final CollectionReference _mainCollecction = _firestore.collection('foods');

class Database {
  static String? userUid;

  static Future<void> addItem({required FoodData foodData}) async {
    DocumentReference documentReference =
        _mainCollecction.doc(userUid).collection('food').doc();
    Map<String, dynamic> data = foodData.toJson();
    await documentReference
        .set(data)
        .whenComplete(() => print('------------ yes well done --------'))
        .catchError((e) => print(e));
  }
  
}
