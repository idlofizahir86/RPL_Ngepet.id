import 'package:equatable/equatable.dart';

class ProductModels extends Equatable {
  final String id;
  final String name;
  final String imageUrl;
  final String kategori;
  final String merkProduk;
  final int hargaSatuan;
  final int stok;
  final DateTime tanggalKadaluwarsa;
  final DateTime tanggalProduksi;
  final String storeId; // ID toko tempat produk ini tersedia

  const ProductModels({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.kategori,
    required this.merkProduk,
    required this.hargaSatuan,
    required this.stok,
    required this.tanggalKadaluwarsa,
    required this.tanggalProduksi,
    required this.storeId,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        imageUrl,
        kategori,
        merkProduk,
        hargaSatuan,
        stok,
        tanggalKadaluwarsa,
        tanggalProduksi,
        storeId,
      ];
}
