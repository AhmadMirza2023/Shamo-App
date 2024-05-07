import 'package:flutter/material.dart';
import 'package:toko_sepatu/pages/home/chat_page.dart';
import 'package:toko_sepatu/pages/home/home_page.dart';
import 'package:toko_sepatu/pages/home/profile_page.dart';
import 'package:toko_sepatu/pages/home/whislist_page.dart';
import 'package:toko_sepatu/theme.dart';

class MainPage extends StatefulWidget {
  // const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  Widget cartButton() {
    return FloatingActionButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          30,
        ),
      ),
      backgroundColor: secondaryColor,
      onPressed: () {
        Navigator.pushNamed(context, '/cart');
      },
      child: Image.asset(
        'assets/icon_cart.png',
        width: 20,
      ),
    );
  }

  Widget customBottomNav() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(defaultMargin),
      child: BottomAppBar(
        elevation: 0,
        color: backgroundColor4,
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          backgroundColor: backgroundColor4,
          elevation: 0,
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_home.png',
                width: 20,
                color: currentIndex == 0 ? primaryColor : Color(0xff808191),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_chat.png',
                width: 20,
                color: currentIndex == 1 ? primaryColor : Color(0xff808191),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_whislist.png',
                width: 20,
                color: currentIndex == 2 ? primaryColor : Color(0xff808191),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_profile.png',
                width: 19,
                color: currentIndex == 3 ? primaryColor : Color(0xff808191),
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return ChatPage();
          break;
        case 2:
          return WhislistPage();
          break;
        case 3:
          return ProfilePage();
          break;
        default:
          return HomePage();
          break;
      }
    }

    return Scaffold(
      backgroundColor: currentIndex == 0 ? backgroundColor1 : backgroundColor3,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNav(),
      body: body(),
    );
  }
}
