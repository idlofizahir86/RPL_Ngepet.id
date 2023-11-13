import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/product_model.dart';

class ProductService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<List<ProductModels>> getProducts(String storeId) async {
    try {
      QuerySnapshot productSnapshot = await _firestore
          .collection('stores')
          .doc(storeId)
          .collection('products')
          .get();
      return productSnapshot.docs.map((doc) {
        return ProductModels(
          id: doc.id,
          name: doc['name'],
          imageUrl: doc['imageUrl'],
          kategori: doc['kategori'],
          merkProduk: doc['merkProduk'],
          hargaSatuan: doc['hargaSatuan'],
          stok: doc['stok'],
          tanggalKadaluwarsa: (doc['tanggalKadaluwarsa'] as Timestamp).toDate(),
          tanggalProduksi: (doc['tanggalProduksi'] as Timestamp).toDate(),
          storeId: storeId,
        );
      }).toList();
    } catch (e) {
      print('Error fetching products: $e');
      return [];
    }
  }

  // Tambahkan metode lain sesuai kebutuhan
}
