import 'package:flutter/material.dart';
import 'package:login_ui/widgets/buttom_widget.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //backgroundColor: Colors.grey,
          elevation: 0,
          title: const Text('Examples'),
        ),
        body: ListView(
          children: [
            Row(
              children: const [
                Text('Description: Screenpage1'),
                ButtomWidget(route: '/screenPage1')
              ],
            ),
            Row(
              children: const [
                Text('Description: Screenpage2'),
                ButtomWidget(route: '/screenPage2')
              ],
            )
          ],
        ));
  }
}
