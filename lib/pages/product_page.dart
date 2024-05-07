import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:toko_sepatu/theme.dart';

class ProductPage extends StatefulWidget {
  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  bool isWhislist = false;
  int currentIndex = 0;

  Future<void> showSuccessDialog() async {
    return showDialog(
      context: context,
      builder: (BuildContext context) => Container(
        width: MediaQuery.of(context).size.width - (2 * defaultMargin),
        child: AlertDialog(
          backgroundColor: backgroundColor3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          content: SingleChildScrollView(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.close,
                      color: primaryTextColor,
                    ),
                  ),
                ),
                Image.asset(
                  'assets/icon_success.png',
                  width: 100,
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Hurray :)',
                  style: primaryTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Item added successfully',
                  style: secondaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: reguler,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 10,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/cart');
                  },
                  child: Text(
                    'View My Cart',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  List images = [
    'assets/image_shoes.png',
    'assets/image_shoes.png',
    'assets/image_shoes.png',
  ];

  List familiarShoes = [
    'assets/image_shoes.png',
    'assets/image_shoes.png',
    'assets/image_shoes.png',
    'assets/image_shoes.png',
    'assets/image_shoes.png',
    'assets/image_shoes.png',
    'assets/image_shoes.png',
    'assets/image_shoes.png',
    'assets/image_shoes.png',
  ];

  @override
  Widget build(BuildContext context) {
    Widget familiarShoesCard(String imageUrl) {
      return Container(
        margin: EdgeInsets.only(
          right: 16,
        ),
        width: 54,
        height: 54,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          image: DecorationImage(
            image: AssetImage(imageUrl),
          ),
        ),
      );
    }

    Widget indicator(int index) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 2),
        width: currentIndex == index ? 16 : 4,
        height: 4,
        decoration: BoxDecoration(
          color: currentIndex == index ? primaryColor : Color(0xffC4C4C4),
          borderRadius: BorderRadius.circular(10),
        ),
      );
    }

    Widget header() {
      int index = -1;

      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 20,
              right: defaultMargin,
              left: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  icon: Icon(
                    Icons.chevron_left,
                    color: backgroundColor1,
                    size: 30,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/cart');
                  },
                  icon: Image.asset(
                    'assets/icon_cart_black.png',
                    width: 20,
                  ),
                )
              ],
            ),
          ),
          CarouselSlider(
            items: images
                .map(
                  (image) => Image.asset(
                    image,
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                  ),
                )
                .toList(),
            options: CarouselOptions(
                initialPage: 0,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                }),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: images.map(
              (e) {
                index++;
                return indicator(index);
              },
            ).toList(),
          ),
        ],
      );
    }

    Widget content() {
      int index = -1;

      return Container(
        height: 525,
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 17,
        ),
        decoration: BoxDecoration(
          color: backgroundColor1,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(24),
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: defaultMargin,
                left: defaultMargin,
                right: defaultMargin,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'TERREX URBAN LOW',
                          style: primaryTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: semiBold,
                          ),
                        ),
                        Text(
                          'Hiking',
                          style: secondaryTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: reguler,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isWhislist = !isWhislist;
                      });

                      if (isWhislist) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(8),
                              ),
                            ),
                            backgroundColor: secondaryColor,
                            content: Text(
                              'Has been added to the Whislist',
                              style: primaryTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: reguler,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(8),
                              ),
                            ),
                            backgroundColor: alertColor,
                            content: Text(
                              'Has been removed from the Whislist',
                              style: primaryTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: reguler,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        );
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: defaultMargin),
                      child: Image.asset(
                        isWhislist
                            ? 'assets/button_whislist_blue.png'
                            : 'assets/button_whislist.png',
                        width: 46,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 20,
                left: defaultMargin,
                right: defaultMargin,
              ),
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Price starts from',
                    style: primaryTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: reguler,
                    ),
                  ),
                  Text(
                    '\$143,98',
                    style: priceTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: defaultMargin,
                right: defaultMargin,
                left: defaultMargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: primaryTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Unpaved trails and mixed surfaces are easy when you have the traction and support you need. Casual enough for the daily commute.',
                    style: subtitleTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: light,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: defaultMargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: defaultMargin,
                    ),
                    child: Text(
                      'Familiar Shoes',
                      style: primaryTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: medium,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: familiarShoes.map(
                        (image) {
                          index++;
                          return Container(
                            margin: EdgeInsets.only(
                              left: index == 0 ? defaultMargin : 0,
                            ),
                            child: familiarShoesCard(image),
                          );
                        },
                      ).toList(),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: backgroundColor1,
              padding: EdgeInsets.all(defaultMargin),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/detail-chat');
                    },
                    child: Image.asset(
                      'assets/button_chat.png',
                      width: 54,
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 76,
                        ),
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        showSuccessDialog();
                      },
                      child: Text(
                        'Add to Cart',
                        style: primaryTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor6,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            header(),
            content(),
          ],
        ),
      ),
    );
  }
}
