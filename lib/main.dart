import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toko_sepatu/pages/cart_page.dart';
import 'package:toko_sepatu/pages/checkout_page.dart';
import 'package:toko_sepatu/pages/checkout_success.dart';
import 'package:toko_sepatu/pages/detail_chat_page.dart';
import 'package:toko_sepatu/pages/home/main_page.dart';
import 'package:toko_sepatu/pages/product_page.dart';
import 'package:toko_sepatu/pages/sign_in_page.dart';
import 'package:toko_sepatu/pages/sign_up_page.dart';
import 'package:toko_sepatu/pages/splash_page.dart';
import 'package:toko_sepatu/pages/update_profile_page.dart';
import 'package:toko_sepatu/providers/auth_provider.dart';
import 'package:toko_sepatu/providers/product_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
        ),
      ],
      child: MaterialApp(
        routes: {
          '/': (context) => SplashPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => MainPage(),
          '/detail-chat': (context) => DetailChatPage(),
          '/update-profile': (context) => UpdateProfilePage(),
          '/product': (context) => ProductPage(),
          '/cart': (context) => CartPage(),
          '/checkout': (context) => CheckoutPage(),
          '/checkout-success': (context) => CheckoutSuccessPage(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
