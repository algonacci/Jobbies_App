import 'package:flutter/material.dart';
import 'package:jobbies_app/pages/detail_page.dart';
import 'package:jobbies_app/theme.dart';

class CustomList extends StatelessWidget {
  final String jobTitle;
  final String imageUrl;
  final String companyName;

  const CustomList({
    Key key,
    this.companyName,
    this.imageUrl,
    this.jobTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(),
          ),
        );
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl,
            width: 45,
          ),
          const SizedBox(width: 25),
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
                const SizedBox(height: 15),
                Divider(
                  color: greyColor,
                  thickness: 1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
