import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toko_sepatu/models/user_model.dart';
import 'package:toko_sepatu/providers/auth_provider.dart';
import 'package:toko_sepatu/providers/product_provider.dart';
import 'package:toko_sepatu/theme.dart';
import 'package:toko_sepatu/widgets/product_card.dart';
import 'package:toko_sepatu/widgets/product_tile.dart';

class HomePage extends StatelessWidget {
  // const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;
    ProductProvider productProvider = Provider.of<ProductProvider>(context);

    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello, ${user.name}',
                    style: primaryTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    '@${user.username}',
                    style: subtitleTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: reguler,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/update-profile');
              },
              child: Container(
                margin: EdgeInsets.only(left: defaultMargin),
                width: 54,
                height: 54,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(
                      user.photoProfileUrl,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget categories() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 12,
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  'All Shoes',
                  style: primaryTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 12,
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  color: transparentColor,
                  border: Border.all(color: subtitleColor),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  'Running',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 12,
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  color: transparentColor,
                  border: Border.all(color: subtitleColor),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  'Training',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 12,
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  color: transparentColor,
                  border: Border.all(color: subtitleColor),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  'BasketBall',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 12,
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  color: transparentColor,
                  border: Border.all(color: subtitleColor),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  'Hiking',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget popularProductsTitle() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
        ),
        child: Text(
          'Popular Products',
          style: primaryTextStyle.copyWith(
            fontSize: 22,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget popularProducts() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Row(
                children: productProvider.products
                    .map(
                      (product) => ProductCard(product),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      );
    }

    Widget newArrivalsTitle() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
        ),
        child: Text(
          'New Arrivals',
          style: primaryTextStyle.copyWith(
            fontSize: 22,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget newArrivals() {
      return Container(
        margin: EdgeInsets.only(top: 14),
        child: Column(
          children: [
            ProductTile(),
            ProductTile(),
            ProductTile(),
            ProductTile(),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        categories(),
        popularProductsTitle(),
        popularProducts(),
        newArrivalsTitle(),
        newArrivals(),
      ],
    );
  }
}
