import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:hsbc/common/text_style.dart';

//================================================= Custom Button

class CustomButton extends StatelessWidget {
  final VoidCallback callback;
  final String text;

  const CustomButton({Key key, this.callback, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        elevation: 6.0,
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
        child: MaterialButton(
          onPressed: callback,
          splashColor: Colors.red,
          minWidth: 120.0,
          height: 20.0,
          child: Text(
            text,
            style: subTitleStyle,
          ),
        ),
      ),
    );
  }
}

//================================================================= Share Button
class ShareButton extends StatefulWidget {
  @override
  _ShareButtonState createState() => _ShareButtonState();
}

class _ShareButtonState extends State<ShareButton>
    with TickerProviderStateMixin {
  ScrollController scrollController;
  bool dialVisible = true;

  @override
  void initState() {
    super.initState();

    scrollController = ScrollController()
      ..addListener(() {
        setDialVisible(scrollController.position.userScrollDirection ==
            ScrollDirection.reverse);
      });
  }

  void setDialVisible(bool value) {
    setState(() {
      dialVisible = value;
    });
  }

  SpeedDial buildSpeedDial() {
    return SpeedDial(
//      animatedIcon: AnimatedIcons.menu_close,
      animatedIconTheme: IconThemeData(size: 22.0),
      child: Icon(Icons.share),
      backgroundColor: Colors.blueGrey,
      onOpen: () => print('OPENING DIAL'),
      onClose: () => print('DIAL CLOSED'),
      visible: dialVisible,
      curve: Curves.bounceIn,
      children: [
        SpeedDialChild(
          child: Image.asset(
            'assets/images/1-whatsapp-icon.png',
          ),
          backgroundColor: Colors.green,
          onTap: () => print('Whatsapp'),
          label: 'Whatsapp',
          labelStyle: TextStyle(fontWeight: FontWeight.w500),
          labelBackgroundColor: Colors.green,
        ),
        SpeedDialChild(
          child: Image.asset(
            'assets/images/3-gmail-icon.png',
            fit: BoxFit.cover,
          ),
          backgroundColor: Colors.white,
          onTap: () => print('Email'),
          label: 'Email',
          labelStyle: TextStyle(fontWeight: FontWeight.w500),
          labelBackgroundColor: Colors.white,
        ),
        SpeedDialChild(
          child: Image.asset(
            'assets/images/2-telegram-icon.png',
          ),
          backgroundColor: Colors.blue,
          onTap: () => print('Telegram'),
          labelWidget: Container(
            color: Colors.blue,
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.all(6),
            child: Text('Telegram'),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildSpeedDial();
  }
}

//============================================================= Red Button
class RedButton extends StatelessWidget {
  final VoidCallback callback;
  final String text;

  const RedButton({Key key, this.callback, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        elevation: 6.0,
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.red,
        child: MaterialButton(
          onPressed: callback,
          splashColor: Colors.red,
          minWidth: 120.0,
          height: 20.0,
          child: Text(
            text,
            style: buttonTextStyle,
          ),
        ),
      ),
    );
  }
}

//============================================================= Grey Button
class GreyButton extends StatelessWidget {
  final VoidCallback callback;
  final String text;

  const GreyButton({Key key, this.callback, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        elevation: 6.0,
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.black54,
        child: MaterialButton(
          onPressed: callback,
          splashColor: Colors.red,
          minWidth: 120.0,
          height: 20.0,
          child: Text(
            text,
            style: buttonTextStyle,
          ),
        ),
      ),
    );
  }
}
