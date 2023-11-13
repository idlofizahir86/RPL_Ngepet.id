import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ngepet_id/shared/theme.dart';
import 'package:ngepet_id/ui/widgets/custom_button.dart';

import '../widgets/custom_icon.dart';

class ProdukDetailPage extends StatefulWidget {
  const ProdukDetailPage({super.key});

  @override
  State<ProdukDetailPage> createState() => _ProdukDetailPageState();
}

class _ProdukDetailPageState extends State<ProdukDetailPage> {
  int count = 1; // Default angka

  void increment() {
    setState(() {
      count++;
    });
  }

  void decrement() {
    if (count > 1) {
      setState(() {
        count--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        padding: const EdgeInsets.all(14),
        width: double.infinity,
        height: 450,
        decoration: BoxDecoration(
          color: kPrimaryColor,
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 360,
                width: 360,
                decoration: BoxDecoration(
                  color: Color(0xFF957D95),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 360,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.scaleDown,
                        image: AssetImage(
                          "assets/produk/produk_1.png",
                        ))),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            backgroundImage(),
            ListView(
              children: [
                SizedBox(
                  height: 350,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 23,
                    right: 23,
                  ),
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Whiskas Adult 1+ Years Tuna Flavor",
                        style: boldTextStyle.copyWith(
                          fontSize: 16,
                          color: kBlackColor,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 68,
                              width: 160,
                              decoration: BoxDecoration(
                                color: kPrimaryColor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Jasa Pengiriman",
                                    style: regularTextStyle.copyWith(
                                      fontSize: 14,
                                      color: kWhiteColor,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    "Reguler",
                                    style: regularTextStyle.copyWith(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 14,
                                      color: kWhiteColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Container(
                              height: 68,
                              width: 160,
                              decoration: BoxDecoration(
                                color: kPrimaryColor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Review",
                                    style: regularTextStyle.copyWith(
                                      fontSize: 14,
                                      color: kWhiteColor,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    "4.9/5",
                                    style: regularTextStyle.copyWith(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 14,
                                      color: kWhiteColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 42,
                            height: 42,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage("assets/user_4.png"),
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "RC Petshop",
                                style: boldTextStyle.copyWith(
                                  fontSize: 16,
                                  color: kBlackColor,
                                ),
                              ),
                              Text(
                                "Nama Toko",
                                style: boldTextStyle.copyWith(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12,
                                  color: kBlackColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Spesifik diformulasikan untuk kucing usia 1 tahun keatas. Mengandung Omega 3  dan 6, serta Zinc untuk kesehatan kulit dan bulu yang indah. Mengandung Vitamin A dan taurine untuk kesehatan matanya. Mengandung protein dari ikan yang segar, lemak yang baik, vitamin dan mineral yang seimbang untuk tetap menjaga kucingmu aktif dan bahagia. Mengandung Antioksidan (Vitamin E dan Selenium) untuk kesehatan sistem imunnya.",
                        textAlign: TextAlign.justify,
                        style: regularTextStyle.copyWith(
                          fontSize: 14,
                          color: kBlackColor,
                        ),
                      ),
                      SizedBox(
                        height: 120,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 35,
                horizontal: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomIcon(
                    iconUrl: "assets/icons/icon_arrow_back.png",
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  CustomIcon(
                    iconUrl: "assets/icons/icon_cart.png",
                    onTap: () {
                      Navigator.pushNamed(context, '/cart');
                    },
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 100,
                padding: EdgeInsets.only(
                  // right: 20,
                  top: 10,
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                  color: kWhiteColor,
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 20,
                          width: 105,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              IconButton(
                                icon: Icon(size: 15, Icons.remove),
                                onPressed: decrement,
                              ),
                              Text(
                                count.toString(),
                                textAlign: TextAlign.center,
                                style: semiBoldTextStyle.copyWith(
                                  fontSize: 12,
                                ),
                              ),
                              IconButton(
                                icon: Icon(size: 15, Icons.add),
                                onPressed: increment,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            right: 20,
                          ),
                          child: Text(
                            NumberFormat.currency(
                                    locale: 'id_ID',
                                    symbol: 'Rp ',
                                    decimalDigits: 0)
                                .format(58000), // Format mata uang,
                            textAlign: TextAlign.center,
                            style: boldTextStyle.copyWith(
                              fontSize: 12,
                              color: kBlackColor,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomButton(
                            title: "Tambah Keranjang",
                            color: kPrimaryColor,
                            onTap: () {},
                            titleColor: kWhiteColor,
                            width: 165,
                          ),
                          CustomButton(
                            title: "Beli Sekarang",
                            color: kPrimaryColor,
                            onTap: () {
                              Navigator.pop(context);
                            },
                            titleColor: kWhiteColor,
                            width: 165,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
