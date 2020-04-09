import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hsbc/common/constants.dart';
import 'package:hsbc/common/text_style.dart';
import 'package:hsbc/header.dart';
import 'package:hsbc/model/questions.dart';
import 'package:hsbc/screen/result.dart';

class CollectionsPage extends StatefulWidget {
  String title;
  CollectionsPage({@required this.title});
  @override
  _CollectionsPageState createState() => _CollectionsPageState();
}

class _CollectionsPageState extends State<CollectionsPage> {
  final leng = GetQuestions.questionAnswers.length;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Column(
                  children: <Widget>[
                    HeaderWidget(),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      child: Text(
                        HsbcMessages.whichOfTheseReq,
                        style: titleStyle,
                      ),
                    ),
                  ],
                ),
              ),

              //=================================================================== Grid view
              Expanded(
                flex: 2,
                child: GridView.builder(
                    physics: AlwaysScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: EdgeInsets.all(20),
                    itemCount: leng,
                    gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: MediaQuery.of(context).size.width /
                          (MediaQuery.of(context).size.height / 3.5),
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      final filter = GetQuestions.questionAnswers[index]
                              ['questionText']
                          .contains('me');
                      print(filter);
                      return widget.title == null || widget.title == ''
                          ? GestureDetector(
                              child: new Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0)),
                                elevation: 5.0,
                                child: new Container(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  alignment: Alignment.center,
                                  child: Text(
                                    GetQuestions.questionAnswers[index]
                                        ['questionText'],
                                    style: subTitleStyle,
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.of(context).pop();
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ResultScreen(
                                            categoryId: GetQuestions
                                                    .questionAnswers[index]
                                                ['category'],
                                          )),
                                );
                              },
                            )
                          : GetQuestions.questionAnswers[index]['questionText']
                                  .contains(widget.title)
                              ? GestureDetector(
                                  child: new Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.0)),
                                    elevation: 5.0,
                                    child: new Container(
                                      padding:
                                          EdgeInsets.only(left: 10, right: 10),
                                      alignment: Alignment.center,
                                      child: Text(
                                        GetQuestions.questionAnswers[index]
                                            ['questionText'],
                                        style: subTitleStyle,
                                      ),
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.of(context).pop();
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ResultScreen(
                                                categoryId: GetQuestions
                                                        .questionAnswers[index]
                                                    ['category'],
                                              )),
                                    );
                                  },
                                )
                              : Container();
                    }),
              ),

              //-----------------------------------------------------------------------------
            ],
          ),
        ),
      ),
    );
  }
}
