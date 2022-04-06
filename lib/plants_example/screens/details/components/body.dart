import 'package:flutter/material.dart';
import 'package:login_ui/plants_example/constants.dart';
import 'package:login_ui/plants_example/screens/details/components/image_and_icons.dart';
import 'package:login_ui/plants_example/screens/details/components/title_and_price.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(
            size: size,
          ),
          const TitleAndPrice(
            title: 'Angelica',
            country: 'Russia',
            price: 440,
          ),
          /* const SizedBox(
            height: kDefaultPadding,
          ), */
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: TextButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Buy Now',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )),
              ),
              Expanded(
                  child: TextButton(
                onPressed: () {},
                child: const Text('Description'),
              ))
            ],
          )
        ],
      ),
    );
  }
}
