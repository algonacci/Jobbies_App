import 'package:flutter/material.dart';
import 'package:jobbies_app/theme.dart';
import 'package:jobbies_app/widgets/custom_list.dart';

class SecondHomePage extends StatelessWidget {
  final String jobTitle;
  final String imageUrl;

  const SecondHomePage({
    Key key,
    this.imageUrl,
    this.jobTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      child: SizedBox(
                        height: 270,
                        width: double.infinity,
                        child: Image.network(
                          imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 180,
                        left: 24,
                      ),
                      child: Text(
                        jobTitle,
                        style: whiteTextStyle.copyWith(
                          fontWeight: semiBold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 220,
                        left: 24,
                      ),
                      child: Text(
                        '12,039 available',
                        style: whiteTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: defaultMargin,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Big Companies',
                        style: blackTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Column(
                        children: const [
                          CustomList(
                            companyName: 'Google',
                            jobTitle: 'Front-End Developer',
                            imageUrl: 'assets/icon_google.png',
                          ),
                          SizedBox(height: 16),
                          CustomList(
                            companyName: 'Instagram',
                            jobTitle: 'UI Designer',
                            imageUrl: 'assets/icon_instagram.png',
                          ),
                          SizedBox(height: 16),
                          CustomList(
                            companyName: 'Facebook',
                            jobTitle: 'Data Scientist',
                            imageUrl: 'assets/icon_facebook.png',
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Text(
                        'New Startups',
                        style: blackTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Column(
                        children: const [
                          CustomList(
                            companyName: 'Google',
                            jobTitle: 'Front-End Developer',
                            imageUrl: 'assets/icon_google.png',
                          ),
                          SizedBox(height: 16),
                          CustomList(
                            companyName: 'Instagram',
                            jobTitle: 'UI Designer',
                            imageUrl: 'assets/icon_instagram.png',
                          ),
                          SizedBox(height: 16),
                          CustomList(
                            companyName: 'Facebook',
                            jobTitle: 'Data Scientist',
                            imageUrl: 'assets/icon_facebook.png',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
