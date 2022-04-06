import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui/plants_example/components/my_bottom_nav_bar.dart';
import 'package:login_ui/plants_example/constants.dart';
import 'package:login_ui/plants_example/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(),
        body: Body(),
        bottomNavigationBar: const MyBottomNavBar());
  }

  AppBar buildAppBar() {
    return AppBar(
        backgroundColor: kprimaryColor,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons_plants/menu.svg'),
          onPressed: () {},
        ));
  }
}
