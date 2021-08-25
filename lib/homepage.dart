import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      title: new Text("Welcome to Docker and K8S App!",
      style: new TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
          color: Colors.blue.shade900)),
      seconds: 10,
      navigateAfterSeconds: Myhome(),
      image: Image.asset('assets/images/docker.gif'),
      backgroundColor: Colors.blue.shade50,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 160.0,
      loaderColor: Colors.blue.shade900,
    );
  }
}


class Myhome extends StatefulWidget {
  @override
  _MyhomeState createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("DevOps Tools App"),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Stack(
                overflow: Overflow.visible,
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 40,
                            blurRadius: 50,
                            offset: Offset(0, 0),
                          )
                        ],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.elliptical(300, 70),
                          bottomRight: Radius.elliptical(300, 70),
                        ),
                        gradient: LinearGradient(
                          colors: [
                            Colors.green.shade300,
                            Colors.blueAccent.shade100
                          ],
                        )),
                    child: Container(
                      margin: EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Welcome to DevOps World",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              fontStyle: FontStyle.italic,
                              color: Colors.black54,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Container(
                  margin: EdgeInsets.all(30),
                  width: 200,
                  height: 100,
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                      onPressed: () =>
                          {Navigator.pushNamed(context, "/docker")},
                      color: Colors.blue[300],
                      child: Text(
                        "Docker",
                        style: TextStyle(
                          color: Colors.indigo,
                          decorationStyle: TextDecorationStyle.wavy,
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                        ),
                      ))),
              Container(
                  margin: EdgeInsets.all(30),
                  width: 200,
                  height: 100,
                  child: RaisedButton(
                      onPressed: () =>
                          {Navigator.pushNamed(context, "/kubernetes")},
                      color: Colors.blue[300],
                      child: Text(
                        "Kubernetes",
                        style: TextStyle(
                          color: Colors.indigo,
                          decorationStyle: TextDecorationStyle.wavy,
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                        ),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
