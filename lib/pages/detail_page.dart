import 'package:flutter/material.dart';
import 'package:jobbies_app/theme.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 80,
                ),
                child: Image.asset(
                  'assets/icon_google.png',
                  width: 60,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Front-End Developer',
                style: blackTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 20,
                ),
              ),
              Text(
                'Google, Inc • Jakarta',
                style: greyTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
