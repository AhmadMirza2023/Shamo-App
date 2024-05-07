import 'package:flutter/material.dart';
import 'package:toko_sepatu/theme.dart';
import 'package:toko_sepatu/widgets/checkout_card.dart';

class CheckoutPage extends StatelessWidget {
  // const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: backgroundColor1,
          leading: Padding(
            padding: EdgeInsets.only(left: defaultMargin),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.chevron_left,
                color: primaryTextColor,
                size: 30,
              ),
            ),
          ),
          title: Text(
            'Checkout Details',
            style: primaryTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
        ),
      );
    }

    Widget content() {
      return ListView(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: defaultMargin,
              right: defaultMargin,
              left: defaultMargin,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'List Items',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                CheckoutCard(),
                CheckoutCard(),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: defaultMargin,
              right: defaultMargin,
              left: defaultMargin,
            ),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: backgroundColor4,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Address Details',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/icon_store_location.png',
                          width: 40,
                        ),
                        Image.asset(
                          'assets/icon_line.png',
                          height: defaultMargin,
                        ),
                        Image.asset(
                          'assets/icon_your_address.png',
                          width: 40,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Store Location',
                          style: secondaryTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: light,
                          ),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Text(
                          'Adidas Core',
                          style: primaryTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: medium,
                          ),
                        ),
                        SizedBox(
                          height: defaultMargin,
                        ),
                        Text(
                          'Your Address',
                          style: secondaryTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: light,
                          ),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Text(
                          'Marsemoon',
                          style: primaryTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: medium,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: defaultMargin,
              left: defaultMargin,
              right: defaultMargin,
            ),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: backgroundColor4,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Payment Summary',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Product Quantity',
                      style: secondaryTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: reguler,
                      ),
                    ),
                    Text(
                      '2 Items',
                      style: primaryTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 13,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Product Price',
                      style: secondaryTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: reguler,
                      ),
                    ),
                    Text(
                      '\$575.96',
                      style: primaryTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 13,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shipping',
                      style: secondaryTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: reguler,
                      ),
                    ),
                    Text(
                      'Free',
                      style: primaryTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  thickness: 0.3,
                  color: subtitleColor,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: priceTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      '\$575.92',
                      style: priceTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: semiBold,
                      ),
                    ),
                  ],
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
          Container(
            height: 50,
            margin: EdgeInsets.only(
              top: defaultMargin,
              right: defaultMargin,
              left: defaultMargin,
              bottom: defaultMargin + 20,
            ),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/checkout-success');
              },
              child: Text(
                'Checkout Now',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: content(),
    );
  }
}
