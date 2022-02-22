import 'package:flutter/material.dart';
import 'package:jobbies_app/pages/sign_up_page.dart';
import 'package:jobbies_app/theme.dart';
import 'package:email_validator/email_validator.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isEmailValid = true;

  TextEditingController emailController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        bottom: false,
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: defaultMargin,
                vertical: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sign In',
                    style: greyTextStyle,
                  ),
                  Text(
                    'Build Your Career',
                    style: blackTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Center(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/illustration1.png',
                          width: 260,
                          height: 240,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email Address',
                        style: greyTextStyle,
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        controller: emailController,
                        onChanged: (value) {
                          bool isValid = EmailValidator.validate(value);
                          if (isValid) {
                            setState(() {
                              isEmailValid = true;
                            });
                          } else {
                            setState(() {
                              isEmailValid = false;
                            });
                          }
                        },
                        decoration: InputDecoration(
                          fillColor: const Color(0xffF1F0F5),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(
                              color: isEmailValid
                                  ? const Color(0xff4141A4)
                                  : const Color(0xffFD4F56),
                            ),
                          ),
                          hintText: '',
                        ),
                        style: TextStyle(
                          color: isEmailValid
                              ? const Color(0xff4141A4)
                              : const Color(0xffFD4F56),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Password',
                        style: greyTextStyle,
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          fillColor: const Color(0xffF1F0F5),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(
                              color: Color(0xff4141A4),
                            ),
                          ),
                          hintText: '',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Container(
                    width: 400,
                    height: 50,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Sign In',
                        style: whiteTextStyle.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpPage(),
                          ),
                        );
                      },
                      child: Text(
                        'Create New Account',
                        style: greyTextStyle,
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
