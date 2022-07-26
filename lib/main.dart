import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'আব্দুল মোমেন'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Column(children: [
            Text(
              "আব্দুল মোমেন",
            ),
            GestureDetector(
              child: Text('০১৫৮৯৪১২৫৮৭'),
              onTap: () {
                print("tapped subtitle");
              },
            )
          ]),
          leading: Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 120,
                child: Padding(
                  padding: EdgeInsets.all(2.0),
                  child: CircleAvatar(
                    radius: 110,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                  ),
                ),
              )),
        ),
        body: 
        Container(
          decoration: BoxDecoration(
          color: Colors.red,
         
        ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: <Widget>[
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 1,
                  itemBuilder: (_, i) {
                    return topList();
                  },
                ),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          'তথ্য সেবা',
                          style: TextStyle(
                            height: 1,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 19, 103, 176),
                          ),
                        ),
                      );
                    }),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 1,
                  itemBuilder: (_, i) {
                    return secondList();
                  },
                ),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          'কেনাবেচা',
                          style: TextStyle(
                            height: 1,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 122, 32, 226),
                          ),
                        ),
                      );
                    }),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 1,
                  itemBuilder: (_, i) {
                    return thirdList();
                  },
                ),
              
              ListView.builder(
                    shrinkWrap: true,
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          'অন্যান্য তথ্য',
                          style: TextStyle(
                            height: 1,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 226, 32, 216),
                          ),
                        ),
                      );
                    }),
               ListView.builder(
                  shrinkWrap: true,
                  itemCount: 1,
                  itemBuilder: (_, i) {
                    return secondList();
                  },
                ),
              ],
            ),
          ),
        ));
  }

  Widget topList() {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, __) =>
            topBuildBox(color: Color.fromARGB(255, 12, 223, 12)),
      ),
    );
  }

  Widget secondList() {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, __) =>
            secondBuildBox(color: Color.fromARGB(255, 180, 213, 242)),
      ),
    );
  }

  Widget thirdList() {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, __) =>
            thirdBuildBox(color: Color.fromARGB(255, 214, 182, 248)),
      ),
    );
  }

  Widget fourthList() {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, __) =>
            fourthBuildBox(color: Color.fromARGB(255, 214, 182, 248)),
      ),
    );
  }

  Widget topBuildBox({Color? color}) => Container(
        margin: EdgeInsets.all(12),
        width: 300,
        height: 500,
        decoration: BoxDecoration(
          color: color,
          image: DecorationImage(
            image: AssetImage("assets/images/product.jpg"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          ),
        ),
      );

  Widget secondBuildBox({Color? color}) => Container(
        margin: EdgeInsets.all(12),
        width: 150,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          ),
        ),
      );

  Widget thirdBuildBox({Color? color}) => Container(
        margin: EdgeInsets.all(12),
        width: 150,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          ),
        ),
      );

  Widget fourthBuildBox({Color? color}) => Container(
        margin: EdgeInsets.all(12),
        width: 150,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          ),
        ),
      );
}
