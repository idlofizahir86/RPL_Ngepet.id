import 'package:equatable/equatable.dart';

class StoreModels extends Equatable {
  final String id;
  final String name;
  final String imageUrl;
  final String address;
  final DateTime
      createdAt; // Atribut untuk menyimpan informasi kapan toko dibuat
  final List<String>
      productIds; // Atribut untuk menyimpan daftar ID produk yang terkait dengan toko

  const StoreModels({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.address,
    required this.createdAt,
    required this.productIds,
  });

  @override
  List<Object?> get props =>
      [id, name, imageUrl, address, createdAt, productIds];
}
