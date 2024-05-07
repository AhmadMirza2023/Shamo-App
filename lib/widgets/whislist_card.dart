import 'package:flutter/material.dart';
import 'package:toko_sepatu/theme.dart';

class WhislistCard extends StatelessWidget {
  // const WhislistCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
      ),
      padding: EdgeInsets.only(
        top: 10,
        left: 12,
        bottom: 14,
        right: 20,
      ),
      decoration: BoxDecoration(
        color: backgroundColor4,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Predator 20.3 Firm Ground Boots',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
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
          Container(
            margin: EdgeInsets.only(left: 20),
            child: IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/button_whislist_blue.png',
                width: 34,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
