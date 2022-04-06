import 'package:flutter/material.dart';
import 'package:login_ui/plants_example/constants.dart';
import 'package:login_ui/plants_example/screens/details/details_screen.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendPlantCard(
            image: 'assets/images_plants/image_1.png',
            title: 'Samantha',
            country: 'Rusia',
            price: 440,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailsScreen()));
            },
          ),
          RecomendPlantCard(
              image: 'assets/images_plants/image_2.png',
              title: 'Angelica',
              country: 'Rusia',
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailsScreen()));
              },
              price: 440),
          RecomendPlantCard(
              image: 'assets/images_plants/image_3.png',
              title: 'Samantha',
              country: 'Russia',
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailsScreen()));
              },
              price: 440)
        ],
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  final String image, title, country;
  final int price;
  final GestureTapCallback press;
  const RecomendPlantCard(
      {Key? key,
      required this.image,
      required this.title,
      required this.country,
      required this.press,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 10),
                        blurRadius: 50,
                        color: kprimaryColor.withOpacity(0.23))
                  ]),
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: '$title\n'.toUpperCase(),
                        style: Theme.of(context).textTheme.button),
                    TextSpan(
                        text: '$country\n'.toUpperCase(),
                        style: TextStyle(color: kprimaryColor.withOpacity(0.5)))
                  ])),
                  const Spacer(),
                  Text(
                    '\$$price',
                    style: const TextStyle(color: kprimaryColor),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
