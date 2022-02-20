import 'package:flutter/material.dart';
import 'package:jobbies_app/theme.dart';

class JobCard extends StatelessWidget {
  final String imageUrl;

  JobCard({
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            imageUrl,
          ),
        ),
      ),
    );
  }
}
