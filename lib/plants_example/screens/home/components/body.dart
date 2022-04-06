import 'package:flutter/material.dart';
import 'package:login_ui/plants_example/screens/home/components/header_with_seachbox.dart';
import 'package:login_ui/plants_example/screens/home/components/recomends_plants.dart';
import 'package:login_ui/plants_example/screens/home/components/title_with_more_btn.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        HeaderWithSearchBox(size: size),
        TitleWithMoreBtn(title: 'Recommend', press: () {}),
        const RecomendsPlants(),
      ]),
    );
  }
}
