import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MyApp());
}

String appVersion = "1.0";

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.red,
        accentColor: Colors.blueAccent,
        textTheme: TextTheme(bodyText1: TextStyle(), bodyText2: TextStyle())
            .apply(bodyColor: Colors.white, displayColor: Colors.white),
        scaffoldBackgroundColor: Colors.grey.shade800,
        canvasColor: Colors.grey.shade800,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        backgroundColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: AppBarTheme(color: Colors.black),
        accentColor: Colors.blueAccent,
        canvasColor: Colors.black,
      ),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget bodyWidget;

  Widget webView(String url) {
    return WebView(
      initialUrl: url,
      javascriptMode: JavascriptMode.unrestricted,
    );
  }

  Widget roundedBox(Color color, Widget widget) {
    return Container(
      width: MediaQuery.of(context).size.width - 25,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(children: [
        SizedBox(height: 10),
        widget,
        SizedBox(height: 10),
      ]),
    );
  }

  Widget home() {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 18, 18, 18),
        ),
        child: ListView(
          children: [
            SizedBox(height: 10),
            Image.asset("assets/images/logo.png"),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.orange,
                  height: 200,
                  minWidth: 200,
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Hi"),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.deepPurpleAccent,
                  height: 200,
                  minWidth: 200,
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Hi"),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.redAccent,
                  height: 200,
                  minWidth: 200,
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Hi"),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.lightBlueAccent,
                  height: 200,
                  minWidth: 200,
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Hi"),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.yellow.shade700,
                  height: 200,
                  minWidth: 200,
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Hi"),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.green.shade700,
                  height: 200,
                  minWidth: 200,
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Hi"),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget forumPage() {
    return webView("https://masterof13fps.com/forum");
  }

  Widget discordPage() {
    return webView("https://discord.gg/bTw2b4q");
  }

  Widget telegramPage() {
    return webView("https://t.me/masterof13fpsde");
  }

  Widget twitterPage() {
    return webView("https://twitter.com/masterof13fpsde");
  }

  @override
  Widget build(BuildContext context) {
    if (bodyWidget == null) {
      bodyWidget = home();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("MasterOf13FPS"),
        backgroundColor: Theme.of(context).accentColor,
      ),
      body: home(),
    );
  }
}
