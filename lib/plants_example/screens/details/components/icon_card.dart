import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui/plants_example/constants.dart';

class IconCard extends StatelessWidget {
  final String icon;
  const IconCard({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      padding: const EdgeInsets.all(kDefaultPadding / 2),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
          color: kBackgroudColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 15),
                blurRadius: 22,
                color: kprimaryColor.withOpacity(0.22))
          ]),
      child: SvgPicture.asset(icon),
    );
  }
}
