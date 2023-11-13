import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ngepet_id/cubit/page_cubit.dart';
import 'package:ngepet_id/cubit/pilih_voucher_cubit.dart';
import 'package:ngepet_id/ui/pages/pilih_voucher_page.dart';

import 'cubit/metode_pembayaran_cubit.dart';
import 'cubit/metode_pengiriman_cubit.dart';
import 'ui/pages/cart_page.dart';
import 'ui/pages/login_page.dart';
import 'ui/pages/main_page.dart';
import 'ui/pages/notifikasi_page.dart';
import 'ui/pages/onboarding_page.dart';
import 'ui/pages/pembayaran_page.dart';
import 'ui/pages/pengiriman_page.dart';
import 'ui/pages/produk_detail_page.dart';
import 'ui/pages/register_page.dart';
import 'ui/pages/pesanan_page.dart';
import 'ui/pages/splash_page.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
        BlocProvider(
          create: (context) => MetodePembayaranCubit(),
        ),
        BlocProvider(
          create: (context) => MetodePengirimanCubit(),
        ),
        BlocProvider(
          create: (context) => PilihVoucherCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const SplashPage(),
          '/main': (context) => const MainPage(),
          '/onboarding': (context) => const OnBoardingPage(),
          '/login': (context) => const LoginPage(),
          '/register': (context) => const RegisterPage(),
          '/notifikasi': (context) => const NotifikasiPage(),
          '/detail-produk': (context) => const ProdukDetailPage(),
          '/cart': (context) => const CartPage(),
          '/pesanan': (context) => PesananPage(),
          '/pembayaran': (context) => const PembayaranPage(),
          '/pengiriman': (context) => const PengirimanPage(),
          '/pilih-voucher': (context) => const PilihVoucherPage(),
        },
      ),
    );
  }
}
