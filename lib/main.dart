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
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.amber,
                    Colors.redAccent,
                    Colors.deepPurpleAccent,
                    Colors.blueAccent
                  ])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              roundedBox(
                  Colors.grey.shade900,
                  Text(
                    "Willkommen in der offiziellen MasterOf13FPS App!",
                    style: TextStyle(fontSize: 24),
                    textAlign: TextAlign.center,
                  )),
              roundedBox(
                  Colors.grey.shade900, Image.asset("assets/images/logo.png")),
              roundedBox(
                  Colors.grey.shade900,
                  Column(children: [
                    FlatButton(
                      child: Text("Über die App", style: TextStyle(fontSize: 20)),
                      color: Theme.of(context).accentColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      onPressed: () {
                        showAboutDialog(
                            context: context,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("Changelog", style: TextStyle(fontSize: 24)),
                                  SizedBox(height: 5),
                                  Divider(height: 1, color: Colors.grey),
                                  SizedBox(height: 5),
                                  roundedBox(
                                      Colors.grey.shade900,
                                      Column(children: [
                                        Text("27. September 2020",
                                            style: TextStyle(fontSize: 20)),
                                        SizedBox(height: 5),
                                        Text("- Forum hinzugefügt",
                                            style: TextStyle(fontSize: 18)),
                                        Text("- Discord hinzugefügt",
                                            style: TextStyle(fontSize: 18)),
                                        Text("- Telegram hinzugefügt",
                                            style: TextStyle(fontSize: 18)),
                                        Text("- Twitter hinzugefügt",
                                            style: TextStyle(fontSize: 18)),
                                        Text("- Changelog hinzugefügt",
                                            style: TextStyle(fontSize: 18)),
                                        Text("- AppDrawer hinzugefügt",
                                            style: TextStyle(fontSize: 18)),
                                        Text("- Startseite erstellt",
                                            style: TextStyle(fontSize: 18)),
                                        Text("- Beginn der App-Entwicklung",
                                            style: TextStyle(fontSize: 18)),
                                      ])),
                                ],
                              ),
                            ],
                            applicationName: "MasterOf13FPS",
                            applicationVersion: "1.0");
                      },
                    ),
                    SizedBox(height: 5),
                    Divider(height: 1, color: Colors.grey),
                    SizedBox(height: 5),
                    Text(
                      "made by CrazyMemeCoke",
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.center,
                    )
                  ]))
            ],
          ),
        ));
  }

  Widget drawer() {
    return ListView(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset("assets/images/background.jpeg",
                fit: BoxFit.fill,
                height: 150,
                width: MediaQuery.of(context).size.width),
            roundedBox(
                Colors.grey.shade900,
                Column(children: [
                  Text("MasterOf13FPS App"),
                  Text("Version: " + appVersion),
                ])),
          ],
        ),
        SizedBox(height: 5),
        Text("Start",
            style: TextStyle(fontSize: 20), textAlign: TextAlign.center),
        SizedBox(height: 5),
        ListTile(
          title: Text("Startseite"),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          onTap: () {
            setState(() {
              bodyWidget = home();
              Navigator.of(context).pop();
            });
          },
        ),
        SizedBox(height: 5),
        Divider(height: 1, color: Colors.grey),
        SizedBox(height: 5),
        Text("Links",
            style: TextStyle(fontSize: 20), textAlign: TextAlign.center),
        SizedBox(height: 5),
        ListTile(
          title: Text("Forum"),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          onTap: () {
            setState(() {
              bodyWidget = forumPage();
              Navigator.of(context).pop();
            });
          },
        ),
        SizedBox(height: 5),
        Divider(height: 1, color: Colors.grey),
        SizedBox(height: 5),
        Text("Kontaktmöglichkeiten",
            style: TextStyle(fontSize: 20), textAlign: TextAlign.center),
        SizedBox(height: 5),
        ListTile(
          title: Text("Discord"),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          onTap: () {
            setState(() {
              bodyWidget = discordPage();
              Navigator.of(context).pop();
            });
          },
        ),
        ListTile(
          title: Text("Telegram"),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          onTap: () {
            setState(() {
              bodyWidget = telegramPage();
              Navigator.of(context).pop();
            });
          },
        ),
        ListTile(
          title: Text("Twitter"),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          onTap: () {
            setState(() {
              bodyWidget = twitterPage();
              Navigator.of(context).pop();
            });
          },
        ),
      ],
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
      body: bodyWidget,
      drawer: Drawer(child: drawer()),
    );
  }
}
