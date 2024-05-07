import 'package:flutter/material.dart';
import 'package:toko_sepatu/theme.dart';
import 'package:toko_sepatu/widgets/cart_card.dart';

class CartPage extends StatelessWidget {
  // const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          leading: Padding(
            padding: EdgeInsets.only(left: defaultMargin),
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/product');
              },
              icon: Icon(
                Icons.chevron_left,
                color: primaryTextColor,
                size: 30,
              ),
            ),
          ),
          automaticallyImplyLeading: false,
          backgroundColor: backgroundColor1,
          title: Text(
            'Your Cart',
            style: primaryTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
        ),
      );
    }

    Widget emptyCart() {
      return Container(
        width: double.infinity,
        color: backgroundColor3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icon_empty_cart.png',
              width: 80,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Opss! Your Cart is Empty',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
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
                vertical: 10,
                horizontal: 24,
              ),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(
                  12,
                ),
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
      );
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.only(
          top: defaultMargin,
          right: defaultMargin,
          left: defaultMargin,
        ),
        children: [
          CartCard(),
        ],
      );
    }

    Widget customBottomNav() {
      return Container(
        height: 200,
        padding: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Subtotal',
                    style: primaryTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: reguler,
                    ),
                  ),
                  Text(
                    '\$287,96',
                    style: priceTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: defaultMargin,
            ),
            Divider(
              thickness: 0.3,
              color: subtitleColor,
            ),
            SizedBox(
              height: defaultMargin,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(12),
              ),
              margin: EdgeInsets.only(
                right: defaultMargin,
                left: defaultMargin,
                bottom: defaultMargin,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/checkout');
                    },
                    child: Text(
                      'Continue to Checkout',
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: primaryTextColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: content(),
      bottomNavigationBar: customBottomNav(),
    );
  }
}
