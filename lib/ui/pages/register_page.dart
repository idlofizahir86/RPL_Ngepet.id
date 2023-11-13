import 'package:flutter/material.dart';
import 'package:ngepet_id/shared/theme.dart';
import 'package:ngepet_id/ui/widgets/custom_button.dart';

import '../widgets/custom_textformfield.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kWhiteColor,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                Text(
                  "REGISTER",
                  style: boldTextStyle.copyWith(
                    color: kBlack2Color,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextFormField(
                  title: "Nama*",
                  hintText: "Masukkan nama anda",
                  controller: TextEditingController(),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Nama tidak boleh kosong';
                    }
                    return null;
                  },
                ),
                CustomTextFormField(
                  title: "No Handphone*",
                  hintText: "Masukkan nomor handphone anda",
                  controller: TextEditingController(),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Nomor handphone tidak boleh kosong';
                    }
                    return null;
                  },
                ),
                CustomTextFormField(
                  title: "Email*",
                  hintText: "Masukkan email anda",
                  controller: TextEditingController(),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Email tidak boleh kosong';
                    } else if (!value.contains('@')) {
                      return 'Email tidak valid';
                    }
                    return null;
                  },
                ),
                CustomTextFormField(
                  title: "Password*",
                  obscureText: true,
                  hintText: "Masukkan password anda",
                  controller: TextEditingController(),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password tidak boleh kosong';
                    }
                    return null;
                  },
                ),
                CustomTextFormField(
                  title: "Ulangi Password*",
                  obscureText: true,
                  hintText: "Masukkan ulang password anda",
                  controller: TextEditingController(),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Ulangi password tidak boleh kosong';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: CustomButton(
                    title: "Register",
                    color: kPrimaryColor,
                    titleColor: kWhiteColor,
                    onTap: () {
                      // Lakukan penanganan registrasi atau navigasi ke halaman utama
                      Navigator.pushNamed(context, '/main');
                    },
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sudah punya akun?",
                      style: regularTextStyle.copyWith(
                        fontSize: 12,
                        color: kPurple2Color,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // Navigasi ke halaman login
                        Navigator.pushNamed(context, '/main');
                      },
                      child: Text(
                        " Login Sekarang",
                        style: regularTextStyle.copyWith(
                          fontSize: 12,
                          color: kPrimaryColor,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
