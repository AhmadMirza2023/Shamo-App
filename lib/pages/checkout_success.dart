import 'package:flutter/material.dart';
import 'package:toko_sepatu/theme.dart';

class CheckoutSuccessPage extends StatelessWidget {
  // const CheckoutSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return PreferredSize(
        preferredSize: Size.fromHeight(87),
        child: AppBar(
          toolbarHeight: 70,
          backgroundColor: backgroundColor1,
          automaticallyImplyLeading: false,
          title: Text(
            'Checkout Success',
            style: primaryTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: backgroundColor3,
          padding: EdgeInsets.symmetric(
            horizontal: 115,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icon_empty_cart.png',
                height: 69,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'You made a transaction',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Stay at home while we prepare your dream shoes',
                style: secondaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: reguler,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 44,
                width: 196,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/home', (route) => false);
                  },
                  child: Text(
                    'Order Other Shoes',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 44,
                width: 196,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: backgroundColor7,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/cart', (route) => false);
                  },
                  child: Text(
                    'View My Order',
                    style: otherTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: header(),
      body: content(),
    );
  }
}
