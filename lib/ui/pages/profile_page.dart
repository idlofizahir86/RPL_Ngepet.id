import 'package:flutter/material.dart';
import 'package:ngepet_id/ui/widgets/custom_button.dart';

import '../../shared/theme.dart';
import '../widgets/setting_item_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kWhiteColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 20,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      margin: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/user_6.png",
                          ),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Fahmi Agung M",
                          style: boldTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            "Lihat Profil",
                            style: regularTextStyle.copyWith(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SettingItemCard(
                title: "Pengaturan Akun",
              ),
              const SettingItemCard(
                title: "Ajukan Buka Toko",
              ),
              const SettingItemCard(
                title: "Ajukan Role Dokter",
              ),
              const SettingItemCard(
                title: "Terakhir Dilihat",
              ),
              const SettingItemCard(
                title: "Chat dan Support",
              ),
              const SettingItemCard(
                title: "FAQ",
              ),
              CustomButton(
                title: "Keluar",
                color: kPrimaryColor,
                onTap: () {},
                titleColor: kWhiteColor,
                icon: "assets/icons/icon_logout.png",
              ),
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
