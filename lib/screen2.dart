import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ScreenPage2 extends StatefulWidget {
  const ScreenPage2({Key? key}) : super(key: key);

  @override
  State<ScreenPage2> createState() => _ScreenPage2State();
}

class _ScreenPage2State extends State<ScreenPage2> {
  late final String dateNow;
  @override
  void initState() {
    super.initState();
    dateNow = DateFormat.yMMMEd().format(DateTime.now()).split(',')[1];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFEFF2),
      appBar: /* PreferredSize(
          preferredSize: const Size.fromHeight(100.0),
          child: */

          AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.blue,
          ),
          onPressed: () => Navigator.of(context).maybePop(),
        ),
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'Welcome Back,     ',
                  style: TextStyle(color: Color(0xFFA5A7AA), fontSize: 18.0),
                ),
                Text(
                  ' Jimmy Sullivan',
                  style: TextStyle(
                      color: Color(0xFF05070A),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    dateNow,
                    style: const TextStyle(
                        color: Color(0xFFA5A7AA),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      padding: const EdgeInsets.all(0.0),
                      color: const Color(0xFF05070A),
                      onPressed: () {},
                      icon: const Icon(Icons.calendar_today))
                ],
              ),
            )
          ],
        ),
        //backgroundColor: const Color(0xFFEFEFF2),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(height: 20.0),
            Container(
                alignment: AlignmentDirectional.centerStart,
                padding: const EdgeInsets.all(25),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Color(0xFF266EF1),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Limitted offer',
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Join Wacanna Premium and get your unlimited access!',
                      style: TextStyle(
                          letterSpacing: 0.3,
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 30),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: const Text(
                          'Join Now',
                          style: TextStyle(color: Color(0xFF05070A)),
                        ))
                  ],
                )),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Activity list',
                  style: TextStyle(
                      color: Color(0xFF05070A),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'View All',
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Container(
                  alignment: AlignmentDirectional.centerStart,
                  padding: const EdgeInsets.all(25),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Maret\'s Target',
                              style: TextStyle(
                                  color: Color(0xFF05070A),
                                  letterSpacing: 0.5,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                          Text(
                            '10 Target',
                            style: TextStyle(color: Color(0xFFA5A7AA)),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                /* shrinkWrap: true, */
                                children: const [
                                  ListTile(
                                    leading: Icon(
                                      Icons.check_circle,
                                      color: Colors.blue,
                                    ),
                                    title:
                                        Text('Mythical Glory on Land of Dawn'),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.check_circle,
                                        color: Colors.blue),
                                    title: Text(
                                        'Upload 4 Shot & 1 Product in Dribble'),
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 100.0, vertical: 15),
                                decoration: const BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0x80266EF1),
                                        spreadRadius: 1,
                                        blurRadius: 5,
                                        offset: Offset(0, 2))
                                  ],
                                  borderRadius: BorderRadiusDirectional.all(
                                      Radius.circular(20)),
                                  color: Color(0xFF266EF1),
                                ),
                                child: const Text(
                                  'View All',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          )),
                    ],
                  ),
                  /* const SizedBox(
                                    height: 8,
                                  ),
                                  ListView(
                                    scrollDirection: Axis.horizontal,
                                    shrinkWrap: true,
                                    children: [Text('qwdqwdqwdqwd'), Text('qwdqwdqwdwd')],
                                  ) */
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  alignment: AlignmentDirectional.centerStart,
                  padding: const EdgeInsets.all(25),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Evaluation',
                              style: TextStyle(
                                  color: Color(0xFF05070A),
                                  letterSpacing: 0.5,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                          Text(
                            'January 2022',
                            style: TextStyle(color: Color(0xFFA5A7AA)),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                //shrinkWrap: true,
                                children: const [
                                  ListTile(
                                    leading: Icon(
                                      Icons.check_circle,
                                      color: Colors.blue,
                                    ),
                                    title:
                                        Text('Mythical Glory on Land of Dawn'),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.check_circle,
                                        color: Colors.blue),
                                    title: Text(
                                        'Upload 4 Shot & 1 Product in Dribble'),
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 100.0, vertical: 15),
                                decoration: const BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0x80266EF1),
                                        spreadRadius: 1,
                                        blurRadius: 5,
                                        offset: Offset(0, 2))
                                  ],
                                  borderRadius: BorderRadiusDirectional.all(
                                      Radius.circular(20)),
                                  color: Color(0xFF266EF1),
                                ),
                                child: const Text(
                                  'View All',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          )),
                    ],
                  ),
                  /* const SizedBox(
                                    height: 8,
                                  ),
                                  ListView(
                                    scrollDirection: Axis.horizontal,
                                    shrinkWrap: true,
                                    children: [Text('qwdqwdqwdqwd'), Text('qwdqwdqwdwd')],
                                  ) */
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
