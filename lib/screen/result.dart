import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hsbc/common/constants.dart';
import 'package:hsbc/common/text_style.dart';
import 'package:hsbc/header.dart';
import 'package:hsbc/model/questions.dart';
import 'package:hsbc/screen/deail_guid.dart';

class ResultScreen extends StatefulWidget {
  String categoryId;
  ResultScreen({@required this.categoryId});
  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  bool text = true;
  @override
  void initState() {
    print(widget.categoryId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final answerData = GetAnswers.where((answer) {
      return answer.category.contains(widget.categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          HsbcMessages.logoPath,
          width: 100,
        ),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Column(
                  children: <Widget>[
                    HeaderWidget(),
                    SizedBox(
                      height: 50,
                    ),
                    text
                        ? Container(
                            child: Text(
                              'We found ${answerData.length} solutions for you',
                              style: headingTextStyle,
                            ),
                          )
                        : Container(),
                  ],
                ),
              ),

              //=================================================================== Grid view
              Expanded(
                flex: 2,
                child: ListView.builder(
                  itemCount: answerData.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (ctx, index) {
                    return Row(
                      children: <Widget>[
                        GestureDetector(
                          child: new Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0)),
                            elevation: 5.0,
                            child: new Container(
                              height: 350,
                              width: 170,
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Image.asset(
                                    answerData[index].image,
                                    height: 20,
                                  ),
                                  Divider(),
                                  Text(
                                    'Transaction Cost',
                                    style: subHeadingTextStyle,
                                  ),
                                  Text(
                                    answerData[index].transCost,
                                    style: subTitleStyle,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Set Up Cost',
                                    style: subHeadingTextStyle,
                                  ),
                                  Text(
                                    answerData[index].setCost,
                                    style: subTitleStyle,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Processing Time',
                                    style: subHeadingTextStyle,
                                  ),
                                  Text(
                                    answerData[index].processTime,
                                    style: subTitleStyle,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Volume',
                                    style: subHeadingTextStyle,
                                  ),
                                  Text(
                                    answerData[index].volume,
                                    style: subTitleStyle,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Maintainance Cost',
                                    style: subHeadingTextStyle,
                                  ),
                                  Text(
                                    answerData[index].maintainCost,
                                    style: subTitleStyle,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Text(
                                        'Read More >',
                                        softWrap: true,
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.of(context).pop();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailGuidPage(
                                        id: answerData[index].id,
                                        title: answerData[index].title,
                                        image: answerData[index].image,
                                      )),
                            );
                          },
                        ),

                        //---------------------
                      ],
                    );
                  },
                ),
              ),
              SizedBox(
                height: 200,
              )

              //-----------------------------------------------------------------------------
            ],
          ),
        ),
      ),
    );
  }
}
