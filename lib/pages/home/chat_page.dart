import 'package:flutter/material.dart';
import 'package:toko_sepatu/theme.dart';
import 'package:toko_sepatu/widgets/chat_tile.dart';

class ChatPage extends StatelessWidget {
  // const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Text(
          'Message Support',
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
      );
    }

    Widget emptyChat() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: backgroundColor3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icon_headset.png',
                width: 80,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Opss no message yet?',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'You have never done a transaction',
                style: secondaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: reguler,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 44,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: primaryColor,
                ),
                child: TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 24,
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Explore Store',
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    )),
              ),
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: backgroundColor3,
          child: ListView(
            padding: EdgeInsets.only(
              left: defaultMargin,
              right: defaultMargin,
            ),
            children: [
              ChatTile(),
              ChatTile(),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        // emptyChat(),
        content(),
      ],
    );
  }
}
