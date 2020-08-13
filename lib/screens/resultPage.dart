import 'package:bmi_calculator/components/bottomButton.dart';
import 'package:flutter/material.dart';

import '../resultArguments.dart';

class ResultPage extends StatelessWidget {
  static const routeName = '/result';
  // ResultPage(
  //     {@required this.result,
  //     @required this.bmi,
  //     @required this.interpretation});

  // final String result;
  // final double bmi;
  // final String interpretation;

  @override
  Widget build(BuildContext context) {
    final ResultArguments args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Your Result',
                    style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF1D1E33),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          args.result,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          args.bmi,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 100.0),
                        ),
                        Text(
                          args.interpretation,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              BottomButton(
                title: 'RE-CALCULATE YOUR BMI',
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
              )
            ],
          ),
        ));
  }
}
