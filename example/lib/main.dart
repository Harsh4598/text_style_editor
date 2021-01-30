import 'package:flutter/material.dart';
import 'package:text_style_editor/text_style_editor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextStyleEditor Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:
          // Drag(),
          MyHomePage(title: 'TextStyleEditor Demo'),
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
  TextStyle textStyle;
  TextAlign textAlign;
  var text = "Sample Text";
  @override
  void initState() {
    textStyle =
        TextStyle(fontSize: 20, color: Colors.black, fontFamily: 'Billabong');

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 6,
              child: Container(
                padding: EdgeInsets.only(top: 50),
                width: 500,
                child: Text(
                  text,
                  style: textStyle,
                  textAlign: textAlign,
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: SafeArea(
                child: Container(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: TextStyleEditor(
                      backgroundColor: Color(0xFF05396B),
                      primaryColor: Color(0xFF5CDB94),
                      secondaryColor: Colors.white,
                      text: text,
                      height: 250,
                      textStyle: textStyle,
                      onTextChanged: (value) {
                        setState(() {
                          text = value;
                        });
                      },
                      onTextStyleChanged: (value) {
                        setState(() {
                          textStyle = value;
                        });
                      },
                      onTextAlignChanged: (value) {
                        setState(
                          () {
                            textAlign = value;
                          },
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Drag extends StatefulWidget {
  @override
  _DragState createState() => _DragState();
}

class _DragState extends State<Drag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 400,
          width: 400,
          color: Colors.white,
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blue,
                  image: DecorationImage(
                    image: new NetworkImage(
                        "https://thumbs.dreamstime.com/b/funny-face-baby-27701492.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              HomePage()
            ],
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Offset offset = Offset.zero;
  TextStyle textStyle;
  TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Positioned(
        left: offset.dx,
        top: offset.dy,
        child: GestureDetector(
            onPanUpdate: (details) {
              setState(() {
                offset = Offset(
                    offset.dx + details.delta.dx, offset.dy + details.delta.dy);
              });
            },
            child: SizedBox(
              width: 300,
              height: 300,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Expanded(
                      child: Text(
                        "You Think You Are Funny But You Are Not",
                        textAlign: textAlign,
                        style: textStyle,
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: SafeArea(
                        child: Container(
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: TextStyleEditor(
                              activeToolColor: Color(0xFF30110D),
                              backgroundColor: Colors.red,
                              secondaryColor: Colors.amber,
                              height: 250,
                              textStyle: textStyle,
                              onTextStyleChanged: (value) {
                                setState(() {
                                  textStyle = value;
                                });
                              },
                              onTextAlignChanged: (value) {
                                setState(
                                  () {
                                    textAlign = value;
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
