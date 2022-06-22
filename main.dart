import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const DemoApp());
}

class DemoApp extends StatelessWidget {
  const DemoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.orange,
        ),
      ),
      //themeMode: ThemeData.dark(),
      title: "Flutter Workshop",
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "Hello AppBar!",
            style: GoogleFonts.lobster(),
          ),
          leading: Icon(Icons.menu),
          actions: const [
            Icon(Icons.search),
            Icon(
              Icons.notifications,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.orange,
                        ),
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        child: FlutterLogo(size: 40)),
                    Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.yellow,
                        ),
                        padding: EdgeInsets.all(10),
                        child: FlutterLogo(size: 40)),
                    Container(
                        margin: EdgeInsets.all(10),
                        color: Colors.green,
                        padding: EdgeInsets.all(10),
                        child: FlutterLogo(size: 40)),
                  ],
                ),
                Image.network(
                    "https://docs.flutter.dev/assets/images/homepage/DashWithApprenticeBook.png"),
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty)
                          return "Please enter some text";

                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: 'Login',
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 3, color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 3, color: Colors.orange),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      )),
                ),

                Padding(
                  padding: const EdgeInsets.all(20),
                  child: SizedBox(
                    height: 40,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: ElevatedButton(
                        child: Text("Submit!"),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text(
                              "Correct Data!",
                            )));
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            textStyle: TextStyle(
                                color: Colors.white, fontFamily: 'Lobster'),
                            elevation: 10)),
                  ),
                )
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: 'Account'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ],
        ),
      ),
    );
  }
}
