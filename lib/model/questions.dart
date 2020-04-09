import 'package:flutter/cupertino.dart';

//================================================================================= Questions

class GetQuestions {
  static var questionAnswers = [
    {
      'questionText': 'I need to recieve funds immediately',
      'category': 'q1',
    },
    {
      'questionText':
          'I need to identify who has paid me across a large customer base',
      'category': 'q2',
    },
    {
      'questionText': 'I want to pull funds from payers on a recurring bases',
      'category': 'q3',
    },
    {
      'questionText': 'I want to pull funds from my other accounts into HSBC',
      'category': 'q4',
    },
    {
      'questionText':
          'I want to collect payments in my physical shop using e-wallet and cards',
      'category': 'q5',
    },
    {
      'questionText':
          'I want to collect payments within my website / mobile application',
      'category': 'q6',
    },
  ];
}
//================================================================================= Answers

enum Type { Single, Multi }

class Answers {
  final String id;
  final List<String> category;
  final String title;
  final String image;
  final Type type;
  final String transCost;
  final String setCost;
  final String processTime;
  final String volume;
  final String maintainCost;

  const Answers(
      {@required this.id,
      @required this.category,
      @required this.title,
      @required this.image,
      @required this.type,
      @required this.transCost,
      @required this.setCost,
      @required this.processTime,
      @required this.volume,
      @required this.maintainCost});
}

const GetAnswers = [
  Answers(
      id: 'a1',
      category: ['q1'],
      image: 'assets/images/duitnow.png',
      title: 'DuitNow',
      type: Type.Multi,
      transCost: '2%',
      setCost: 'RM 100',
      processTime: '10 Seconds',
      volume: '10,000',
      maintainCost: 'RM 50 / month'),
  Answers(
      id: 'a2',
      category: ['q1'],
      image: 'assets/images/fpx.png',
      title: 'FPX',
      type: Type.Multi,
      transCost: '1.5%',
      setCost: 'RM 200',
      processTime: '30 Seconds',
      volume: '20,000',
      maintainCost: 'RM 60 / month'),
  Answers(
      id: 'a3',
      category: ['q2'],
      image: 'assets/images/virtualaccount.png',
      title: 'VirtualAccount',
      type: Type.Multi,
      transCost: '2%',
      setCost: 'RM 100',
      processTime: '10 Seconds',
      volume: '10,000',
      maintainCost: 'RM 50 / month'),
  Answers(
      id: 'a4',
      category: ['q2'],
      image: 'assets/images/jompay.png',
      title: 'JomPay',
      type: Type.Multi,
      transCost: '1.5%',
      setCost: 'RM 200',
      processTime: '30 Seconds',
      volume: '20,000',
      maintainCost: 'RM 60 / month'),
  Answers(
      id: 'a5',
      category: ['q3'],
      image: 'assets/images/directdebit.png',
      title: 'DirectDebit',
      type: Type.Single,
      transCost: '2%',
      setCost: 'RM 100',
      processTime: '10 Seconds',
      volume: '10,000',
      maintainCost: 'RM 50 / month'),
  Answers(
      id: 'a6',
      category: ['q4'],
      image: 'assets/images/directdebit.png',
      title: 'DirectDebit',
      type: Type.Single,
      transCost: '2%',
      setCost: 'RM 100',
      processTime: '10 Seconds',
      volume: '10,000',
      maintainCost: 'RM 50 / month'),
  Answers(
      id: 'a7',
      category: ['q5', 'q6'],
      image: 'assets/images/virtualaccount.png',
      title: 'MobileCollection',
      type: Type.Single,
      transCost: '2%',
      setCost: 'RM 100',
      processTime: '10 Seconds',
      volume: '10,000',
      maintainCost: 'RM 50 / month'),
  Answers(
      id: 'a8',
      category: ['q6'],
      image: 'assets/images/fpx.png',
      title: 'FPX',
      type: Type.Multi,
      transCost: '1.5%',
      setCost: 'RM 200',
      processTime: '30 Seconds',
      volume: '20,000',
      maintainCost: 'RM 60 / month'),
];
