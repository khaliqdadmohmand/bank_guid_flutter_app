import 'package:flutter/material.dart';
import 'package:hsbc/common/buttons.dart';
import 'package:hsbc/common/constants.dart';
import 'package:hsbc/common/text_style.dart';
import 'package:hsbc/header.dart';

class SubmitFormPage extends StatelessWidget {
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              HeaderWidget(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Submission Form',
                      style: titleStyle,
                    ),
                    //---------------------------------------------------------- IC number
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 50,
                      child: TextField(
                        decoration: new InputDecoration(
                            border: new OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black54),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            hintStyle: TextStyle(color: Colors.black54),
                            hintText: 'Malaysian Identity Card Number (IC)',
//                            helperText: 'Keep it short, this is just a demo.',
                            labelText: 'Malaysian Identity Card Number (IC) *',
                            labelStyle: TextStyle(color: Colors.black54),
                            suffixStyle: const TextStyle(color: Colors.green)),
                      ),
                    ),
                    //---------------------------------------------------------- Full Name
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 50,
                      child: TextField(
                        decoration: new InputDecoration(
                            border: new OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black54),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            hintStyle: TextStyle(color: Colors.black54),
                            hintText: 'Full Name (as per MyKad)',
//                            helperText: 'Keep it short, this is just a demo.',
                            labelText: 'Full Name (as per MyKad) *',
                            labelStyle: TextStyle(color: Colors.black54),
                            suffixStyle: const TextStyle(color: Colors.green)),
                      ),
                    ),
                    //---------------------------------------------------------- Name on card
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 50,
                      child: TextField(
                        decoration: new InputDecoration(
                            border: new OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black54),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            hintStyle: TextStyle(color: Colors.black54),
                            hintText: 'Name to Appear on Card ',
//                            helperText: 'Keep it short, this is just a demo.',
                            labelText: 'Name to Appear on Card *',
                            labelStyle: TextStyle(color: Colors.black54),
                            suffixStyle: const TextStyle(color: Colors.green)),
                      ),
                    ),
                    //---------------------------------------------------------- Mother Maiden Name
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 50,
                      child: TextField(
                        decoration: new InputDecoration(
                            border: new OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black54),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            hintStyle: TextStyle(color: Colors.black54),
                            hintText: 'Mother maiden Name ',
//                            helperText: 'Keep it short, this is just a demo.',
                            labelText: 'Mother maiden Name *',
                            labelStyle: TextStyle(color: Colors.black54),
                            suffixStyle: const TextStyle(color: Colors.green)),
                      ),
                    ),
                  ],
                ),
              ),
              //==================================================== Buttons
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GreyButton(
                        text: 'RETURN',
                        callback: () {
                          Navigator.of(context).pop();
                        }),
                    RedButton(
                      text: 'SUBMIT',
                      callback: () {
                        Navigator.of(context).pop();
//                        Navigator.push(
//                          context,
//                          MaterialPageRoute(
//                              builder: (context) => SubmitFormPage()),
//                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
