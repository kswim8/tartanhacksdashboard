import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Events and Scheduling'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // find a way to pull the event information from the database
    // add them to the lists below: event name, event category, event time, event description
    final List<String> eventName = <String>['TartanHacks Begins!', 'Flutter Workshop', 'TartanHacks Ends!'];
    final List<int> category = <int>[500, 200, 500];
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: eventName.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 250,
              color: Colors.amber[category[index]],
              child: Center(child: Text('${eventName[index]}')),
            );
          }
      )
    );
  }
}