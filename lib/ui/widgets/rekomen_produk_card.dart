import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../shared/theme.dart';

class RekomenProdukCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final double harga;
  final Function() onTap;

  const RekomenProdukCard({
    super.key,
    required this.title,
    this.harga = 0,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 184,
        height: 218,
        padding: const EdgeInsets.symmetric(horizontal: 18),
        margin: const EdgeInsets.only(
          right: 15,
          bottom: 15,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: const Color(0xffF1F1F1),
            width: 2,
          ),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 63), // 25% hitam, // Warna shadow
              offset: Offset(0, 4), // Posisi shadow (X, Y)
              blurRadius: 4, // Radius blur
              spreadRadius: 0, // Jarak penyebaran shadow
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              height: 147,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.center,
              style: regularTextStyle.copyWith(
                fontSize: 12,
                color: kBlackColor,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            const SizedBox(height: 10),
            Text(
              NumberFormat.currency(
                      locale: 'id_ID', symbol: 'Rp ', decimalDigits: 0)
                  .format(harga), // Format mata uang,
              textAlign: TextAlign.center,
              style: boldTextStyle.copyWith(
                fontSize: 12,
                color: kBlackColor,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}
