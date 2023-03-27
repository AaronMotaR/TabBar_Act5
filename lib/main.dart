import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.deepOrange,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(50), // Creates border
              color: Colors.lime,
            ),
            tabs: [
              Tab(icon: Icon(Icons.apple)),
              Tab(icon: Icon(Icons.car_crash)),
              Tab(icon: Icon(Icons.access_time)),
              Tab(icon: Icon(Icons.add_circle)),
            ],
          ),
          centerTitle: true,
          title: Text('Aaron Mota'),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.apple, size: 350),
            Icon(Icons.car_crash, size: 350),
            Icon(Icons.access_time, size: 350),
            Icon(Icons.add_circle, size: 350),
          ],
        ),
      ),
    );
  }
}
