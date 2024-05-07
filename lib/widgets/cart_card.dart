import 'package:flutter/material.dart';
import 'package:toko_sepatu/theme.dart';

class CartCard extends StatelessWidget {
  // const CartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: backgroundColor4,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/image_shoes.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(12),
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
              Column(
                children: [
                  Image.asset(
                    'assets/button_add.png',
                    width: 16,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    '2',
                    style: primaryTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Image.asset(
                    'assets/button_min.png',
                    width: 16,
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Image.asset(
                'assets/button_remove.png',
                width: 12,
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                'Remove',
                style: alertTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: light,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
