import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:hsbc/common/text_style.dart';

class GuidExpands extends StatelessWidget {
  String title;
  GuidExpands({@required this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          //-----------------------------------------
          ExpandablePanel(
            tapHeaderToExpand: true,
            hasIcon: true,
            iconColor: Colors.red,
            header: Text(
              'What does the product do?',
              style: TextStyle(fontSize: 16, color: Colors.red),
            ),
            expanded: Text(
              'International fund transfer using account number. \n\n Suitable for cross-border transactions in foreign currency. Crediting depends on currencty and beneficiary location.\n\n',
              style: subHeadingTextStyle,
            ),
          ),

          //-----------------------------------------
          ExpandablePanel(
            tapHeaderToExpand: true,
            hasIcon: true,
            iconColor: Colors.red,
            header: Text(
              'What are the common uses?',
              style: TextStyle(fontSize: 16, color: Colors.red),
            ),
            expanded: Column(
              children: <Widget>[
                ListTile(
                  leading: MyBullet(),
                  title: Text(
                    'Suply payments\n',
                    style: subHeadingTextStyle,
                  ),
                ),
                ListTile(
                  leading: MyBullet(),
                  title: Text(
                    'Treasury payments\n',
                    style: subHeadingTextStyle,
                  ),
                ),
              ],
            ),
          ),

          //-----------------------------------------
          ExpandablePanel(
            tapHeaderToExpand: true,
            hasIcon: true,
            iconColor: Colors.red,
            header: Text(
              'How is the product positioned?',
              style: TextStyle(fontSize: 16, color: Colors.red),
            ),
            expanded: Text(
              'TT is the only cross-border payment option available which must be denominated in foreign currency.',
              style: subHeadingTextStyle,
            ),
          ),

          //-----------------------------------------
          ExpandablePanel(
            tapHeaderToExpand: true,
            hasIcon: true,
            iconColor: Colors.red,
            header: Text(
              'How is a $title payment created?',
              style: TextStyle(fontSize: 16, color: Colors.red),
            ),
            expanded: Column(
              children: <Widget>[
                Text(
                  'Payers will need your account number details using either:',
                  style: subHeadingTextStyle,
                ),
                ListTile(
                  leading: MyBullet(),
                  title: Text(
                    'Treasury payments\n',
                    style: subHeadingTextStyle,
                  ),
                ),
              ],
            ),
          ),
          //-----------------------------------------
          ExpandablePanel(
            tapHeaderToExpand: true,
            hasIcon: true,
            iconColor: Colors.red,
            header: Text(
              'What are the advantages and disadvantages?',
              style: TextStyle(fontSize: 16, color: Colors.red),
            ),
            expanded: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Advantages:'),
                ListTile(
                  leading: MyBullet(),
                  title: Text(
                    'Perform transactions of very high value\n',
                    style: subHeadingTextStyle,
                  ),
                ),
                ListTile(
                  leading: MyBullet(),
                  title: Text(
                    'Perform transactions across a wide number of foreign currencies.\n',
                    style: subHeadingTextStyle,
                  ),
                ),
                Text('Disadvantages:'),
                ListTile(
                  leading: MyBullet(),
                  title: Text(
                    'Costly\n',
                    style: subHeadingTextStyle,
                  ),
                ),
                ListTile(
                  leading: MyBullet(),
                  title: Text(
                    'Uncertainty in correspondent bank charges\n',
                    style: subHeadingTextStyle,
                  ),
                ),
                ListTile(
                  leading: MyBullet(),
                  title: Text(
                    'Slow crediting time\n',
                    style: subHeadingTextStyle,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//======================= bulits
class MyBullet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 10.0,
      width: 10.0,
      decoration: new BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
      ),
    );
  }
}
