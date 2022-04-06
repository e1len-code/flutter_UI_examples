import 'package:flutter/material.dart';
import 'package:login_ui/plants_example/constants.dart';
import 'package:login_ui/plants_example/screens/home/home_screen.dart';

class ScreenPage1 extends StatelessWidget {
  const ScreenPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant App',
      theme: ThemeData(
          scaffoldBackgroundColor: kBackgroudColor,
          primaryColor: kprimaryColor,
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: HomeScreen(),
    );
  }
}
