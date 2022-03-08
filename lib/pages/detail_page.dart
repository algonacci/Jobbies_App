import 'package:flutter/material.dart';
import 'package:jobbies_app/theme.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isApplied = false;

  @override
  Widget build(BuildContext context) {
    Widget applyButton() {
      return SizedBox(
        width: 400,
        height: 50,
        child: TextButton(
          onPressed: () {
            setState(() {
              isApplied = !isApplied;
            });
          },
          child: Text(
            'Apply for Job',
            style: whiteTextStyle,
          ),
          style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
      );
    }

    Widget cancelApplyButton() {
      return SizedBox(
        width: 400,
        height: 50,
        child: TextButton(
          onPressed: () {
            setState(() {
              isApplied = !isApplied;
            });
          },
          child: Text(
            'Cancel Apply',
            style: whiteTextStyle,
          ),
          style: TextButton.styleFrom(
            backgroundColor: const Color(0xffFD4F56),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
      );
    }

    Widget successAppliedMessages() {
      return Container(
        width: 300,
        margin: const EdgeInsets.only(bottom: 20),
        decoration: const BoxDecoration(
          color: Color(0xffECEDF1),
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'You have applied this job\nand the recruiter will contact you',
              textAlign: TextAlign.center,
              style: greyTextStyle,
            ),
          ),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ListView(
            children: [
              Column(
                children: [
                  const SizedBox(height: 80),
                  isApplied ? successAppliedMessages() : const SizedBox(),
                  Image.asset(
                    'assets/icon_google.png',
                    width: 60,
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
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: defaultMargin,
                      right: defaultMargin,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'About the job',
                          style: blackTextStyle.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/dot.png',
                                  width: 12,
                                  height: 12,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  'Full Time On Site',
                                  style: blackTextStyle.copyWith(
                                    fontWeight: FontWeight.w300,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 16),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/dot.png',
                                  width: 12,
                                  height: 12,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  'Start at \$18,000 per month',
                                  style: blackTextStyle.copyWith(
                                    fontWeight: FontWeight.w300,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Column(
                          children: [
                            Text(
                              'Qualifications',
                              style: blackTextStyle.copyWith(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/dot.png',
                                  width: 12,
                                  height: 12,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  "Candidate must possess at least \na Bachelor's Degree.",
                                  style: blackTextStyle.copyWith(
                                    fontWeight: FontWeight.w300,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 16),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/dot.png',
                                  width: 12,
                                  height: 12,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  'Able to use Microsoft Office and \nGoogle based service.',
                                  style: blackTextStyle.copyWith(
                                    fontWeight: FontWeight.w300,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 16),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/dot.png',
                                  width: 12,
                                  height: 12,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  'Have an excellent time \nmanagement, good at organized \nand details',
                                  style: blackTextStyle.copyWith(
                                    fontWeight: FontWeight.w300,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Column(
                          children: [
                            Text(
                              'Resposibilities',
                              style: blackTextStyle.copyWith(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/dot.png',
                                  width: 12,
                                  height: 12,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  "Initiate and promote any programs, \nevents, training, or activities.",
                                  style: blackTextStyle.copyWith(
                                    fontWeight: FontWeight.w300,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 16),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/dot.png',
                                  width: 12,
                                  height: 12,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  'Assessing and anticipating needs \nand collaborate with Division.',
                                  style: blackTextStyle.copyWith(
                                    fontWeight: FontWeight.w300,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 50),
                        isApplied ? cancelApplyButton() : applyButton(),
                        const SizedBox(height: 20),
                        Center(
                          child: InkWell(
                            onTap: () {},
                            child: Text(
                              'Message Recruiter',
                              style: greyTextStyle,
                            ),
                          ),
                        ),
                        const SizedBox(height: 50),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
