import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:jobbies_app/models/category_model.dart';
import 'package:jobbies_app/models/job_model.dart';
import 'package:jobbies_app/providers/category_provider.dart';
import 'package:jobbies_app/providers/job_provider.dart';
import 'package:jobbies_app/providers/user_provider.dart';
import 'package:jobbies_app/theme.dart';
import 'package:jobbies_app/widgets/custom_list.dart';
import 'package:jobbies_app/widgets/job_card.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);
    var categoryProvider = Provider.of<CategoryProvider>(context);
    var jobProvider = Provider.of<JobProvider>(context);

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
                  userProvider.user.name,
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
          FutureBuilder<List<CategoryModel>>(
            future: categoryProvider.getCategories(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                int index = -1;

                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: snapshot.data.map((category) {
                      index++;

                      return Container(
                        margin: EdgeInsets.only(
                          left: index == 0 ? defaultMargin : 16,
                        ),
                        child: JobCard(
                          imageUrl: category.imageUrl,
                          text: category.name,
                        ),
                      );
                    }).toList(),
                  ),
                );
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
          const SizedBox(height: 30),
          Text(
            'Just Posted',
            style: blackTextStyle.copyWith(
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 26),
          FutureBuilder<List<JobModel>>(
            future: jobProvider.getJobs(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Column(
                  children: snapshot.data
                      .map(
                        (job) => CustomList(
                          companyName: job.companyName,
                          jobTitle: job.name,
                          imageUrl: job.companyLogo,
                        ),
                      )
                      .toList(),
                );
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            },
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
