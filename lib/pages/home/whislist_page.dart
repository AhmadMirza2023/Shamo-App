import 'package:flutter/material.dart';
import 'package:toko_sepatu/theme.dart';
import 'package:toko_sepatu/widgets/whislist_card.dart';

class WhislistPage extends StatelessWidget {
  // const WhislistPage({super.key});

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: backgroundColor1,
          elevation: 0,
          title: Text(
            'Favorite Shoes',
            style: primaryTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
        ),
      );
    }

    Widget emptyWhislist() {
      return Expanded(
        child: Container(
          color: backgroundColor3,
          width: double.infinity,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/icon_whislist_blue.png',
                  width: 74,
                ),
                SizedBox(
                  height: 23,
                ),
                Text(
                  'You don\'t have dream shoes?',
                  style: primaryTextStyle.copyWith(
                      fontSize: 16, fontWeight: medium),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Let\'s find your favorite shoes',
                  style: secondaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: reguler,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    'Explore Store',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          color: backgroundColor3,
          width: double.infinity,
          child: ListView(
            padding: EdgeInsets.only(
              top: 10,
              left: defaultMargin,
              right: defaultMargin,
            ),
            children: [
              WhislistCard(),
              WhislistCard(),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        content(),
      ],
    );
  }
}
