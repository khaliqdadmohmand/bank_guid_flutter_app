import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hsbc/common/buttons.dart';
import 'package:hsbc/common/constants.dart';
import 'package:hsbc/header.dart';
import 'package:hsbc/screen/submit_form.dart';
import 'package:hsbc/screen/widgets/guide_expand.dart';

class DetailGuidPage extends StatelessWidget {
  String id;
  String title;
  String image;
  DetailGuidPage(
      {@required this.title, @required this.id, @required this.image});

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
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  HeaderWidget(),
                  Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(8.0),
                        child: Image.asset(
                          image,
                          height: 20,
                        ),
                      ),
//                    FloatingActionButton(
//                      child: ShareButton(),
//                    ),
                    ],
                  ),
                  Container(
                    width: double.maxFinite,
                    height: 100,
                    color: Colors.white,
                    child: Image.asset('assets/images/GIF.gif'),
                  ),
                  GuidExpands(
                    title: title,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        RedButton(
                          text: 'APPLY NOW',
                          callback: () {
                            Navigator.of(context).pop();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SubmitFormPage()),
                            );
                          },
                        ),
                        GreyButton(
                            text: 'RETURN',
                            callback: () {
                              Navigator.of(context).pop();
                            }),
                      ],
                    ),
                  ),
                ]),
          ),
        ),
      ),
      floatingActionButton: ShareButton(),
    );
  }

  //============================================================ function area

}
