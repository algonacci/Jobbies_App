import 'package:flutter/material.dart';
import 'package:jobbies_app/pages/splash_page.dart';
import 'package:jobbies_app/providers/auth_provider.dart';
import 'package:jobbies_app/providers/category_provider.dart';
import 'package:jobbies_app/providers/job_provider.dart';
import 'package:jobbies_app/providers/user_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider<UserProvider>(
          create: (context) => UserProvider(),
        ),
        ChangeNotifierProvider<CategoryProvider>(
          create: (context) => CategoryProvider(),
        ),
        ChangeNotifierProvider<JobProvider>(
          create: (context) => JobProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const SplashPage(),
        },
      ),
    );
  }
}
