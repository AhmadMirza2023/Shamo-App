import 'package:flutter/material.dart';
import 'package:toko_sepatu/theme.dart';

class CheckoutCard extends StatelessWidget {
  // const CheckoutCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12),
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 20,
      ),
      decoration: BoxDecoration(
        color: backgroundColor4,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/image_shoes.png',
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Terrex Urban Low',
                  style: primaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: semiBold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  '\$143,98',
                  style: priceTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: reguler,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: defaultMargin),
            child: Text(
              '2 Items',
              style: secondaryTextStyle.copyWith(
                fontSize: 14,
                fontWeight: medium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
