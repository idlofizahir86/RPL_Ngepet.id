import 'package:flutter/material.dart';
import 'package:ngepet_id/shared/theme.dart';
import 'package:ngepet_id/ui/widgets/custom_button.dart';

import '../widgets/custom_textformfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});

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
                  "LOGIN",
                  style: boldTextStyle.copyWith(
                    color: kBlack2Color,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
// CustomTextFormField:
// Defensive Programming: Dalam CustomTextFormField, Anda telah menambahkan properti validator,
//yang memungkinkan validasi input sebelum diproses lebih lanjut.
//Ini membantu mencegah input yang tidak valid.
// Penggunaan Controller: Penggunaan TextEditingController memungkinkan
//untuk mengakses dan memanipulasi teks yang dimasukkan pengguna.
                CustomTextFormField(
                  title: "Email*",
                  hintText: "Masukkan email anda",
                  controller:
                      TextEditingController(), // Sesuaikan dengan controller yang diperlukan
                  validator: (value) {
                    // Contoh validasi email
                    if (value == null || value.isEmpty) {
                      return 'Email tidak boleh kosong';
                    } else if (!value.contains('@')) {
                      return 'Email tidak valid';
                    }
                    return null;
                  },
                ),

                CustomTextFormField(
                  title: "Kata Sandi*",
                  obscureText: true,
                  hintText: "Masukkan kata sandi anda",
                  controller: TextEditingController(),
                  validator: (value) {
                    // Contoh validasi kata sandi
                    if (value == null || value.isEmpty) {
                      return 'Kata sandi tidak boleh kosong';
                    }
                    return null;
                  },
                ),
                Container(
                  margin: const EdgeInsets.only(
                    right: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
// InkWell untuk Lupa Password:
// Defensive Programming: Menggunakan InkWell untuk "Lupa Password?"
//memungkinkan pengguna mengakses fitur tambahan jika diperlukan.
//Ini memberikan pengguna cara untuk memulihkan akses mereka jika mereka lupa kata sandi.
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/');
                        },
                        child: Text(
                          "Lupa Password?",
                          style: regularTextStyle.copyWith(
                            fontSize: 12,
                            color: kRedColor,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
// CustomButton untuk Login:
// Defensive Programming: CustomButton memiliki properti onTap yang memicu aksi
//ketika tombol ditekan. Ini adalah titik di mana penanganan login atau navigasi
//ke halaman utama dapat diimplementasikan.
                  child: CustomButton(
                    title: "Login",
                    color: kPrimaryColor,
                    titleColor: kWhiteColor,
                    onTap: () {
                      // Lakukan penanganan login atau navigasi ke halaman utama
                      Navigator.pushNamed(context, '/main');
                    },
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Tidak punya akun?",
                      style: regularTextStyle.copyWith(
                        fontSize: 12,
                        color: kPurple2Color,
                      ),
                    ),
// InkWell untuk Pendaftaran:
// Defensive Programming: Seperti pada "Lupa Password?",
// menggunakan InkWell untuk "Daftar Sekarang" memberikan pengguna opsi untuk mendaftar
//jika mereka belum memiliki akun.
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/register');
                      },
                      child: Text(
                        " Daftar Sekarang",
                        style: regularTextStyle.copyWith(
                          fontSize: 12,
                          color: kPrimaryColor,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
