import 'package:flutter/material.dart';
import 'package:jobbies_app/theme.dart';

class CustomList extends StatelessWidget {
  final String jobTitle;
  final String imageUrl;
  final String companyName;

  CustomList({
    this.companyName,
    this.imageUrl,
    this.jobTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imageUrl,
          width: 45,
        ),
        SizedBox(width: 25),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                jobTitle,
                style: blackTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 16,
                ),
              ),
              Text(
                companyName,
                style: greyTextStyle,
              ),
              SizedBox(height: 15),
              Divider(
                color: greyColor,
                thickness: 1,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
