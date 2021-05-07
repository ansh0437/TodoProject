import 'package:flutter/material.dart';
import 'package:todo_app/constants/numbers.dart';
import 'package:todo_app/helpers/app_helper.dart';

import '../base/base_stateful.dart';

class SplashPage extends BasePage {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends BaseState<SplashPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = getWidth();
    double height = getHeight();

    printLog("width: $width, height: $height");

    return SafeArea(
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(Doubles.sixteen),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Doubles.sixteen),
                    color: Colors.blueGrey,
                  ),
                  width: width > Doubles.sixHundred
                      ? Doubles.fourEighty
                      : Doubles.threeSixty,
                  height: Doubles.fiveHundred,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text('Login'),
                          ),
                          Expanded(
                            child: Text('Register'),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
