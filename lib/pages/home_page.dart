import 'package:flutter/material.dart';
import 'package:jobbies_app/theme.dart';
import 'package:jobbies_app/widgets/custom_list.dart';
import 'package:jobbies_app/widgets/job_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return SafeArea(
        maintainBottomViewPadding: true,
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Howdy,',
                  style: greyTextStyle,
                ),
                Text(
                  'Jason Powell',
                  style: blackTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              children: [
                Image.asset(
                  'assets/user_pic.png',
                  width: 58,
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget body() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hot Categories',
            style: blackTextStyle.copyWith(
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                JobCard(
                  imageUrl: 'assets/card_category1.png',
                  text: 'Website Developer',
                ),
                SizedBox(width: 16),
                JobCard(
                  imageUrl: 'assets/card_category2.png',
                  text: 'Mobile Developer',
                ),
                SizedBox(width: 16),
                JobCard(
                  imageUrl: 'assets/card_category3.png',
                  text: 'App \nDesigner',
                ),
                SizedBox(width: 16),
                JobCard(
                  imageUrl: 'assets/card_category4.png',
                  text: 'Content Writer',
                ),
                SizedBox(width: 16),
                JobCard(
                  imageUrl: 'assets/card_category5.png',
                  text: 'Video Editor',
                ),
                SizedBox(width: 16),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Text(
            'Just Posted',
            style: blackTextStyle.copyWith(
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 26),
          const CustomList(
            companyName: 'Google',
            jobTitle: 'Front-End Developer',
            imageUrl: 'assets/icon_google.png',
          ),
          const SizedBox(height: 16),
          const CustomList(
            companyName: 'Instagram',
            jobTitle: 'UI Designer',
            imageUrl: 'assets/icon_instagram.png',
          ),
          const SizedBox(height: 16),
          const CustomList(
            companyName: 'Facebook',
            jobTitle: 'Data Scientist',
            imageUrl: 'assets/icon_facebook.png',
          ),
        ],
      );
    }

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        unselectedItemColor: const Color(0xffB3B5C4),
        selectedItemColor: primaryColor,
        currentIndex: 0,
        elevation: 0,
        iconSize: 24,
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                'assets/navbar1.png',
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                'assets/navbar2.png',
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                'assets/navbar3.png',
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                'assets/navbar4.png',
              ),
            ),
            label: '',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            left: 24,
            right: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              const SizedBox(height: 30),
              body(),
            ],
          ),
        ),
      ),
    );
  }
}
