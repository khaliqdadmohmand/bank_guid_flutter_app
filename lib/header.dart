import 'package:flutter/material.dart';
import 'package:hsbc/common/constants.dart';
import 'package:hsbc/common/text_style.dart';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.2),
      width: double.maxFinite,
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            child: FittedBox(
              child: Text(
                HsbcMessages.welcomeMessage,
                style: headingTextStyle,
              ),
            ),
          ),
          Container(
            child: Text(
              HsbcMessages.welcomeSubMessage,
              style: subTitleStyle,
            ),
          )
        ],
      ),
    );
  }
}
