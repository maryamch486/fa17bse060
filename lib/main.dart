import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'Simple.dart';
import 'Hard.dart';

void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 60,
        navigateAfterSeconds: new AfterSplash(),
        title: new Text('FA17_BSE_060',
          style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0
          ),),
        image: new Image.network('https://i0.wp.com/www.islamicinsights.com/wp-content/uploads/hijab_silouette.jpg?resize=780%2C470&ssl=1'),
        backgroundColor: Colors.green,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        onClick: ()=>print("Flutter Egypt"),
        loaderColor: Colors.red
    );
  }
}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text("Welcome In SplashScreen Package"),
          automaticallyImplyLeading: false
      ),
      body: new Center(
        child: new Text("Done!",
          style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0
          ),),

      ),
    );
  }
}
class SimpleHard extends StatefulWidget {
  @override
  _SimpleHardState createState() => _SimpleHardState();
}

class _SimpleHardState extends State<SimpleHard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Home',
        home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        RaisedButton(
        onPressed: () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => Simple()));
    },
    child: Text(
    'Simple',
    style: TextStyle(
    color: Colors.white,
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    ),
    ),
    ),
    SizedBox(
    height: 40.0,
    width: 400.0,
    ),
    RaisedButton(
    onPressed: () {
    Navigator.pushReplacement(
    context, MaterialPageRoute(builder: (context) => Hard()));
    },
    child: Text(
    'Hard',
    style: TextStyle(
    color: Colors.white,
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    ),
    ),
    ),
      ],
    ),
    ),
    ),
    );
  }
}
