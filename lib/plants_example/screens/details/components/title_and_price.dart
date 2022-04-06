import 'package:flutter/material.dart';
import 'package:login_ui/plants_example/constants.dart';

class TitleAndPrice extends StatelessWidget {
  final String title, country;
  final int price;
  const TitleAndPrice(
      {Key? key,
      required this.title,
      required this.country,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: '$title\n',
                style: const TextStyle(
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 25)),
            TextSpan(
                text: country,
                style: const TextStyle(
                    fontSize: 20,
                    color: kprimaryColor,
                    fontWeight: FontWeight.w300))
          ])),
          const Spacer(),
          Text(
            '\$$price',
            style: const TextStyle(fontSize: 25, color: kprimaryColor),
          )
        ],
      ),
    );
  }
}
