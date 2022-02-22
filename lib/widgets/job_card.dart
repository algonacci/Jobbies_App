import 'package:flutter/material.dart';
import 'package:jobbies_app/pages/second_homepage.dart';
import 'package:jobbies_app/theme.dart';

class JobCard extends StatelessWidget {
  final String imageUrl;
  final String text;

  const JobCard({
    Key key,
    this.imageUrl,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SecondHomePage(
              jobTitle: text,
              imageUrl: imageUrl,
            ),
          ),
        );
      },
      child: Container(
        width: 150,
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              imageUrl,
            ),
          ),
        ),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 15),
            child: Text(
              text,
              style: whiteTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
