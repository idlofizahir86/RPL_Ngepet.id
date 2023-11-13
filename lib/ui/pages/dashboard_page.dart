import 'package:flutter/material.dart';
import 'package:ngepet_id/shared/theme.dart';
import 'package:ngepet_id/ui/widgets/custom_fitur.dart';
import 'package:ngepet_id/ui/widgets/location_widget.dart';

import '../widgets/custom_search_bar.dart';
import '../widgets/day_widget.dart';
import '../widgets/rekomen_produk_card.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kWhiteColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: headerDasboard(context),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                width: 354,
                height: 172,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/banner_home.png'),
                  ),
                ),
              ),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: const CustomSearchBar()),
              customFiturSection(context),
              const SizedBox(
                height: 25,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Perawatan Terdekat",
                      style: semiBoldTextStyle.copyWith(
                          fontSize: 24, color: kBlackColor),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "Lihat Semua",
                        style: semiBoldTextStyle.copyWith(
                          fontSize: 14,
                          color: kSilverColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              nearLocationSection(),
              const SizedBox(
                height: 15,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Rekomendasi",
                      style: semiBoldTextStyle.copyWith(
                          fontSize: 24, color: kBlackColor),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "Lihat Semua",
                        style: semiBoldTextStyle.copyWith(
                          fontSize: 14,
                          color: kSilverColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              rekomenSection(context),
              const SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget headerDasboard(BuildContext context) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 165,
          child: Column(
            children: [
              const DayWidget(),
              Text(
                "Fahmi Agung M",
                style: semiBoldTextStyle.copyWith(
                  fontSize: 24,
                  color: kBlackColor,
                ),
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        ),
        Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  "/cart",
                );
              },
              child: Container(
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kSilver3Color,
                ),
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        width: 24,
                        height: 24,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/icons/icon_cart.png",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 15),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/notifikasi');
              },
              child: Container(
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kSilver3Color,
                ),
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        width: 24,
                        height: 24,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/icons/icon_notif.png",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    ),
  );
}

Widget customFiturSection(BuildContext context) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        SizedBox(width: 20),
        CustomFitur(
          title: "Toko",
          iconPath: "assets/icons/icon_toko.png",
          onTap: () {
            Navigator.pushNamed(
              context,
              "/detail-produk",
            );
          },
        ),
        CustomFitur(
          title: "Konsultasi",
          iconPath: "assets/icons/icon_konsultasi.png",
          onTap: () {
            Navigator.pushNamed(
              context,
              "/detail-produk",
            );
          },
        ),
        CustomFitur(
          title: "Perawatan",
          iconPath: "assets/icons/icon_perawatan.png",
          onTap: () {
            Navigator.pushNamed(
              context,
              "/detail-produk",
            );
          },
        ),
        CustomFitur(
          title: "Lainnya",
          iconPath: "assets/icons/icon_lainnya.png",
          onTap: () {
            Navigator.pushNamed(
              context,
              "/detail-produk",
            );
          },
        ),
      ],
    ),
  );
}

Widget nearLocationSection() {
  return const SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        SizedBox(width: 20),
        LocationWidget(
          title: "Pet & Bliss | Pet Hotel & Grooming",
          imageUrl: "assets/tempat_1.png",
          jarak: 0.1,
        ),
        LocationWidget(
          title: "Alita Pet Care",
          imageUrl: "assets/tempat_2.png",
          jarak: 0.2,
          color: Color(0xffFAE4B1),
        ),
        LocationWidget(
          title: "aaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          imageUrl: "assets/tempat_1.png",
          jarak: 0.3,
        ),
      ],
    ),
  );
}

Widget rekomenSection(context) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        SizedBox(width: 20),
        RekomenProdukCard(
          title: "Whiskas Adult 1+ Years Tuna Flavor",
          imagePath: "assets/produk/produk_1.png",
          harga: 29000,
          onTap: () {
            Navigator.pushNamed(
              context,
              "/detail-produk",
            );
          },
        ),
        RekomenProdukCard(
          title: "Whiskas Adult 1+ Years Tuna Flavor",
          imagePath: "assets/produk/produk_1.png",
          harga: 29000,
          onTap: () {
            Navigator.pushNamed(
              context,
              "/detail-produk",
            );
          },
        ),
        RekomenProdukCard(
          title: "Royal Canin Kitten 2 Kg",
          imagePath: "assets/produk/produk_3.png",
          harga: 425000,
          onTap: () {
            Navigator.pushNamed(
              context,
              "/detail-produk",
            );
          },
        ),
      ],
    ),
  );
}
