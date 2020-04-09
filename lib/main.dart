import 'package:flutter/material.dart';
import 'package:hsbc/common/buttons.dart';
import 'package:hsbc/common/constants.dart';
import 'package:hsbc/common/text_style.dart';
import 'package:hsbc/header.dart';
import 'package:hsbc/screen/collections.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HSBC',
      theme: ThemeData(
        primaryColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'HSBC'),
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
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          HsbcMessages.logoPath,
          width: 100,
        ),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              //============================================== top text
              HeaderWidget(),
              //=============================================== Search box
              Container(
                color: Colors.white,
                height: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 75,
                      padding: EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: TextField(
                            style: textFieldStyle,
                            onSubmitted: (value) {
                              print(value);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CollectionsPage(
                                          title: value,
                                        )),
                              );
                            },
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: HsbcMessages.searchBoxMessage,
                              hintStyle: subTitleStyle,
                            ),
                          ),
                        ),
                      ),
                    ),
                    //============================================ Text buttom
                    Container(
                      child: Text(
                        HsbcMessages.doYouRequire,
                        style: titleStyle,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        CustomButton(
                          text: HsbcMessages.payments,
                          callback: () {},
                        ),
                        CustomButton(
                          text: HsbcMessages.collections,
                          callback: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CollectionsPage()),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              //==================================================================
            ],
          ),
        ),
      ),
    );
  }
}
