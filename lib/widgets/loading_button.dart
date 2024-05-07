import 'package:flutter/material.dart';
import 'package:toko_sepatu/theme.dart';

class LoadingButton extends StatelessWidget {
  // const LoadingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      width: double.infinity,
      height: 50,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              strokeWidth: 2,
              valueColor: AlwaysStoppedAnimation(
                primaryTextColor,
              ),
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              'Sign Up',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
