import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobbies_app/theme.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/bg.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 50,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Build Your Next\nFuture Career Like\na Master',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  '18.000 jobs available',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 400),
                Center(
                  child: Container(
                    width: 400,
                    height: 45,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Get Started',
                        style: purpleTextStyle.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Center(
                  child: Container(
                    width: 400,
                    height: 45,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                          color: Colors.white,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Sign In',
                        style: whiteTextStyle.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
