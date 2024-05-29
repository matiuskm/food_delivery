import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  // get collection of orders
  final CollectionReference orders =
      FirebaseFirestore.instance.collection('orders');

  // save order to db
  Future<void> saveOrder(String receipt) async {
    await orders.add({
      'receipt': receipt,
      'createdAt': DateTime.now(),
      // add more fields if necessary
    });
  }
}
