import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toko_sepatu/models/user_model.dart';
import 'package:toko_sepatu/providers/auth_provider.dart';
import 'package:toko_sepatu/theme.dart';

class UpdateProfilePage extends StatelessWidget {
  // const UpdateProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;

    PreferredSizeWidget header() {
      return PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          elevation: 0,
          backgroundColor: backgroundColor1,
          leading: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.close,
                // size: 30,
              ),
              color: primaryTextColor,
            ),
          ),
          title: Text(
            'Edit Profile',
            style: primaryTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.check,
                  color: primaryColor,
                  // size: 30,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget nameInput() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: secondaryTextStyle.copyWith(
                fontSize: 13,
                fontWeight: reguler,
              ),
            ),
            TextFormField(
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: reguler,
              ),
              autocorrect: false,
              initialValue: '${user.name}',
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: subtitleColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget usernameInput() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Username',
              style: secondaryTextStyle.copyWith(
                fontSize: 13,
                fontWeight: reguler,
              ),
            ),
            TextFormField(
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: reguler,
              ),
              autocorrect: false,
              initialValue: '@${user.username}',
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: subtitleColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget emailAddressInput() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style: secondaryTextStyle.copyWith(
                fontSize: 13,
                fontWeight: reguler,
              ),
            ),
            TextFormField(
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: reguler,
              ),
              autocorrect: false,
              initialValue: '${user.email}',
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: subtitleColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: defaultMargin),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(user.photoProfileUrl),
                ),
              ),
            ),
            nameInput(),
            usernameInput(),
            emailAddressInput(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: content(),
      resizeToAvoidBottomInset: false,
    );
  }
}
