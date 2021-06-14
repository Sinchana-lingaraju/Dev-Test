import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';

class homePage extends StatelessWidget {
  const homePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: Icon(Icons.notes_rounded, color: Colors.black, size: 40),
      //   leadingWidth: 100,
      //   toolbarHeight: 70,
      //   backgroundColor: Colors.white,
      //   actions: [
      //     Container(
      //       child: CircleAvatar(
      //         radius: 30,
      //         child: Image.asset(
      //           'assets/profile.png',
      //         ),
      //       ),
      //     ),
      //     SizedBox(
      //       width: 30,
      //     )
      //   ],
      // ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Icon(Icons.notes_rounded, color: Colors.black, size: 40),
                Spacer(),
                CircleAvatar(
                  radius: 30,
                  child: Image.asset(
                    'assets/profile.png',
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    Text("welcome back", textAlign: TextAlign.left),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Robert",
                      textScaleFactor: 3,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 75,
                  child: Expanded(
                    flex: 7,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(86, 204, 242, 1),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.notifications_none,
                                color: Colors.white,
                                size: 30.0,
                              ),
                              style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  primary: Colors.orange),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 120,
                              child: Text(
                                "completed your payment setup",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
              ],
            ),

            CarouselSlider(
              options: CarouselOptions(
                height: 200,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 200),
                viewportFraction: 0.8,
              ),
              items: [
                1,
                2,
                3,
                4,
              ].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: [
                              0.1,
                              0.3,
                              0.9,
                              1,
                            ],
                            colors: [
                              Color.fromRGBO(31, 247, 253, 1),
                              Color.fromRGBO(179, 59, 246, 1),
                              Color.fromRGBO(255, 132, 76, 1),
                              Color.fromRGBO(255, 132, 75, 1),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Total",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                ),
                                Text(
                                  "Current",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Invested",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.black),
                                ),
                                Text(
                                  "Value",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.black),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "\$900",
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "\$1000",
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Gains : \$100 + 10.01 ",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),

            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 130,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(86, 204, 242, 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          child: Image.asset(
                            'assets/piggy.png',
                          ),
                        ),
                        Text(
                          "Savings",
                          textScaleFactor: 2,
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  height: 130,
                  width: 205,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(86, 204, 242, 1),
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(
                  width: 30,
                ),
              ],
            ),
            // SizedBox(height: 10),

            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Container(
                  width: 180,
                  height: 70,
                  child: FlatButton.icon(
                    icon: Icon(
                      Icons.arrow_circle_down_outlined,
                      color: Colors.black,
                      size: 35,
                    ),
                    label: Text(
                      "With draw funds",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    textColor: Colors.black,
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(
                            style: BorderStyle.solid,
                            width: 2.0,
                            color: Colors.black),
                        borderRadius: new BorderRadius.circular(20.0)),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                    width: 180,
                    height: 70,
                    padding: EdgeInsets.all(10),
                    decoration: new BoxDecoration(
                      color: Colors.green,
                      borderRadius: new BorderRadius.all(Radius.circular(20.0)),
                    ),
                    child: Center(
                      child: FlatButton(
                        onPressed: () => {},
                        padding: EdgeInsets.all(5.0),
                        child: Center(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(
                                "Invest Now",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.arrow_circle_up_outlined,
                                color: Colors.white,
                                size: 35,
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
