import 'package:flutter/material.dart';
import 'package:login_ui/plants_example/constants.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [],
      ),
    );
  }
}

class FeaturedPlantCard extends StatelessWidget {
  final String image;
  final GestureTapCallback press;
  const FeaturedPlantCard({Key? key, required this.image, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
        onTap: press,
        child: Container(
          margin: const EdgeInsets.only(
              left: kDefaultPadding,
              top: kDefaultPadding / 2,
              bottom: kDefaultPadding / 2),
          width: size.width * 0.8,
          height: 185,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image:
                  DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
        ));
  }
}
