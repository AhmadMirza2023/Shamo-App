import 'package:flutter/material.dart';
import 'package:toko_sepatu/theme.dart';
import 'package:toko_sepatu/widgets/chat_bubble.dart';

class DetailChatPage extends StatelessWidget {
  // const DetailChatPage({super.key});

  PreferredSizeWidget header() {
    return PreferredSize(
      preferredSize: Size.fromHeight(70),
      child: AppBar(
        toolbarHeight: 70,
        backgroundColor: backgroundColor1,
        iconTheme: IconThemeData(color: primaryTextColor),
        centerTitle: false,
        title: Row(
          children: [
            Image.asset(
              'assets/image_shop_logo_online.png',
              width: 50,
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Shoe Store',
                  style: primaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                  ),
                ),
                Text(
                  'Online',
                  style: secondaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: light,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget productPreview() {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 20),
      width: 225,
      height: 74,
      decoration: BoxDecoration(
        color: backgroundColor5,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: primaryColor),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/image_shoes.png',
              width: 54,
              height: 54,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'COURT VISION',
                  style: primaryTextStyle.copyWith(
                    fontWeight: reguler,
                    fontSize: 14,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  '\$57,15',
                  style: priceTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Image.asset(
              'assets/button_close.png',
              width: 22,
            ),
          ),
        ],
      ),
    );
  }

  Widget chatInput() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          productPreview(),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  height: 45,
                  decoration: BoxDecoration(
                    color: backgroundColor4,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: TextFormField(
                      style: primaryTextStyle,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Typle Message...',
                        hintStyle: subtitleTextStyle,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Image.asset(
                'assets/icon_submit.png',
                width: 45,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget content() {
    return ListView(
      padding: EdgeInsets.symmetric(
        horizontal: defaultMargin,
      ),
      children: [
        ChatBubble(
          text: 'Hi, This item is still available?',
          isSender: true,
          hasProduct: true,
        ),
        ChatBubble(
          text: 'Good night, This item is only available in size 42 and 43',
          isSender: false,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: content(),
      bottomNavigationBar: chatInput(),
    );
  }
}
