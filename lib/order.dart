import 'package:flutter/material.dart';

class order extends StatelessWidget {
  const order({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Icon(Icons.arrow_back, color: Colors.black, size: 40),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Order Status",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage("assets/check.png"),
                  backgroundColor: Colors.transparent,
                ),
                SizedBox(width: 10),
                Text(
                  "\$1999",
                  textScaleFactor: 3,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "28th April",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "2021",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: Color.fromRGBO(242, 242, 242, 1),
              child: SizedBox(
                width: 370,
                height: 180,

                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 30.0,
                            backgroundColor: Colors.orange,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Axis Blue Chip Fund",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ],
                      ),
                      Text(
                        "Nov Date   : 28th April",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "Units     : 46.120",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "Folio No     : 28th April",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ), //SizedBox
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: Color.fromRGBO(242, 242, 242, 1),
              child: SizedBox(
                width: 370,
                height: 40,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Order ID  : 55152269441546",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: Color.fromRGBO(242, 242, 242, 1),
              child: SizedBox(
                width: 370,
                height: 400,
                child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Order Status",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "Success",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromRGBO(39, 174, 96, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(
                                image: new AssetImage("assets/arrow.png"),
                                color: null,
                                fit: BoxFit.scaleDown,
                                width: 20,
                                height: 20,
                                alignment: Alignment.center,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: Column(
                                children: [
                                  Text(
                                    '1 May 2021',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '12 A.M',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    '1 May 2021',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '12 A.M',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    '1 May 2021',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '12 A.M',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    '1 May 2021',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '12 A.M',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                ],
                              ),
                            ),
                            Center(
                              child: SizedBox(
                                width: 100,
                                height: 300,
                                child: Center(
                                  child: Stack(
                                    fit: StackFit.expand,
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    overflow: Overflow.visible,
                                    children: <Widget>[
                                      VerticalDivider(
                                        color: Colors.green,
                                        thickness: 4,
                                        width: 40,
                                        // indent: 0,
                                        // endIndent: 300,
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            color: Color.fromRGBO(
                                                242, 242, 242, 1),
                                            // padding: EdgeInsets.all(15.0),
                                            alignment: Alignment.center,
                                            child: CircleAvatar(
                                              radius: 30.0,
                                              backgroundImage: AssetImage(
                                                  "assets/check.png"),
                                              backgroundColor:
                                                  Colors.transparent,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            color: Color.fromRGBO(
                                                242, 242, 242, 1),
                                            alignment: Alignment.center,
                                            child: CircleAvatar(
                                              radius: 30.0,
                                              backgroundImage: AssetImage(
                                                  "assets/check.png"),
                                              backgroundColor:
                                                  Colors.transparent,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            color: Color.fromRGBO(
                                                242, 242, 242, 1),
                                            alignment: Alignment.center,
                                            child: CircleAvatar(
                                              radius: 30.0,
                                              backgroundImage: AssetImage(
                                                  "assets/check.png"),
                                              backgroundColor:
                                                  Colors.transparent,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            color: Color.fromRGBO(
                                                242, 242, 242, 1),
                                            alignment: Alignment.center,
                                            child: CircleAvatar(
                                              radius: 30.0,
                                              backgroundImage: AssetImage(
                                                  "assets/check.png"),
                                              backgroundColor:
                                                  Colors.transparent,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Text(
                                    'Payment',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text('completed'),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    'Order placed',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text('on rupeez'),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    'Order accepted',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text('by axis'),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    'Units allocated',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text('by axis'),
                                  SizedBox(
                                    height: 30,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: Color.fromRGBO(242, 242, 242, 1),
              child: SizedBox(
                width: 370,
                height: 60,
                child: Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: new Image(
                          image: new AssetImage("assets/mark.png"),
                          color: null,
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.center,
                        )),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "Help and Support?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 200,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Report order',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12), // <-- Radius
                      ),
                      primary: Color.fromRGBO(31, 133, 253, 1))),
            ),
          ],
        ),
      ),
    )));
  }
}
