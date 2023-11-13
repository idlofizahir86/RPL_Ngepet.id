import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/store_model.dart';

class StoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Mengambil daftar toko
  Future<List<StoreModels>> getStores() async {
    try {
      QuerySnapshot storeSnapshot = await _firestore.collection('stores').get();
      return storeSnapshot.docs.map((doc) {
        return StoreModels(
          id: doc.id,
          name: doc['name'],
          imageUrl: doc['imageUrl'],
          address: doc['address'],
          createdAt: (doc['createdAt'] as Timestamp).toDate(),
          productIds: List<String>.from(doc['productIds']),
        );
      }).toList();
    } catch (e) {
      print('Error fetching stores: $e');
      return [];
    }
  }

  // Mengambil detail toko berdasarkan ID
  Future<StoreModels?> getStoreById(String storeId) async {
    try {
      DocumentSnapshot storeDoc =
          await _firestore.collection('stores').doc(storeId).get();

      if (storeDoc.exists) {
        return StoreModels(
          id: storeDoc.id,
          name: storeDoc['name'],
          imageUrl: storeDoc['imageUrl'],
          address: storeDoc['address'],
          createdAt: (storeDoc['createdAt'] as Timestamp).toDate(),
          productIds: List<String>.from(storeDoc['productIds']),
        );
      } else {
        return null;
      }
    } catch (e) {
      print('Error fetching store by ID: $e');
      return null;
    }
  }

  // Tambahkan metode lain sesuai kebutuhan, misalnya untuk menambah, mengupdate, atau menghapus toko
}
