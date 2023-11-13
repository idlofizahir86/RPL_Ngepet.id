import 'package:flutter/material.dart';
import 'package:ngepet_id/shared/theme.dart';
import 'package:ngepet_id/ui/widgets/top_section_widget.dart';

import '../widgets/custom_chat_card.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kWhiteColor,
        body: Stack(
          children: [
            const TopSectionWidget(
              title: "Pesan",
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 50,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pesan Konsultasi",
                          style: mediumTextStyle.copyWith(
                            fontSize: 16,
                            color: kBlackColor,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const CustomChatCard(
                          imageUrl: "assets/user_6.png",
                          name: "Clara Isra Syamdah",
                          lastChat: "Terima kasih kak",
                          lastTime: "12.34",
                          read: true,
                        ),
                        const CustomChatCard(
                          imageUrl: "assets/user_5.png",
                          name: "Idlofi Zahir Rajaba",
                          lastChat: "Terima kasih kak",
                          lastTime: "12.34",
                          read: true,
                        ),
                        const CustomChatCard(
                          imageUrl: "assets/user_4.png",
                          name: "Lopu a Lopa",
                          lastChat: "Terima kasih kak",
                          lastTime: "12.34",
                          read: true,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pesan Dengan Penjual",
                          style: mediumTextStyle.copyWith(
                            fontSize: 16,
                            color: kBlackColor,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const CustomChatCard(
                          imageUrl: "assets/user_6.png",
                          name: "Clara Isra Syamdah",
                          lastChat: "Terima kasih kak",
                          lastTime: "12.34",
                          read: true,
                        ),
                        const CustomChatCard(
                          imageUrl: "assets/user_5.png",
                          name: "Idlofi Zahir Rajaba",
                          lastChat: "Terima kasih kak",
                          lastTime: "12.34",
                          read: true,
                        ),
                        const CustomChatCard(
                          imageUrl: "assets/user_4.png",
                          name: "Lopu a Lopa",
                          lastChat: "Terima kasih kak",
                          lastTime: "12.34",
                          read: true,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 80,
                    ),
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
