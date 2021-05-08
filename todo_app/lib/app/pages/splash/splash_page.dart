import 'package:flutter/material.dart';
import 'package:todo_app/constants/colors.dart';
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
      child: LayoutBuilder(
        builder: (context, constraints) {
          return AnimatedContainer(
            duration: Duration(milliseconds: 300),
            color: AppColors.accent,
            padding: constraints.maxWidth < 480
                ? EdgeInsets.zero
                : const EdgeInsets.all(Doubles.fortyEight),
            child: Center(
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: Doubles.thirty, horizontal: Doubles.twentyFour),
                constraints: BoxConstraints(
                  maxWidth: 480,
                  minHeight: 480,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Welcome to the app, please log in"),
                    TextField(
                        decoration: InputDecoration(labelText: "username")),
                    TextField(
                        obscureText: true,
                        decoration: InputDecoration(labelText: "password")),
                    RaisedButton(
                        color: Colors.blue,
                        child: Text("Log in",
                            style: TextStyle(color: Colors.white)),
                        onPressed: () {})
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );

    // return SafeArea(
    //   child: Container(
    //     child: Row(
    //       crossAxisAlignment: CrossAxisAlignment.center,
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         Column(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           crossAxisAlignment: CrossAxisAlignment.center,
    //           children: [
    //             Container(
    //               padding: EdgeInsets.all(Doubles.sixteen),
    //               decoration: BoxDecoration(
    //                 borderRadius: BorderRadius.circular(Doubles.sixteen),
    //                 color: Colors.blueGrey,
    //               ),
    //               width: width > Doubles.sixHundred
    //                   ? Doubles.fourEighty
    //                   : Doubles.threeSixty,
    //               height: Doubles.fiveHundred,
    //               child: Column(
    //                 children: [
    //                   Row(
    //                     children: [
    //                       Expanded(
    //                         child: Text('Login'),
    //                       ),
    //                       Expanded(
    //                         child: Text('Register'),
    //                       ),
    //                     ],
    //                   ),
    //                 ],
    //               ),
    //             )
    //           ],
    //         )
    //       ],
    //     ),
    //   ),
    // );
  }
}
