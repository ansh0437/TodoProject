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
  bool _isLoginScreenVisible = true;

  @override
  void initState() {
    super.initState();
  }

  void _tabClick(bool isLogin) {
    setState(() {
      _isLoginScreenVisible = isLogin;
    });
  }

  void _buttonClick() {
    showToast("Hello");
  }

  @override
  Widget build(BuildContext context) {
    double width = getWidth();
    double height = getHeight();

    // printLog("width: $width, height: $height");

    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return AnimatedContainer(
            duration: Duration(milliseconds: 250),
            color: AppColors.accent,
            padding: constraints.maxWidth <= 480
                ? EdgeInsets.zero
                : const EdgeInsets.all(Doubles.fortyEight),
            child: Center(
              child: Container(
                // padding: const EdgeInsets.all(Doubles.twentyFour),
                constraints: BoxConstraints(
                  maxWidth: Doubles.fourEighty,
                  // maxHeight: Doubles.fourEighty, // constraints.maxHeight < 900 ? constraints.maxHeight : Doubles.fourEighty,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    constraints.maxWidth <= 480
                        ? Doubles.zero
                        : Doubles.sixteen,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    LayoutBuilder(builder: (ctx, cnstrt) {
                      return Container(
                        padding: EdgeInsets.all(Doubles.sixteen),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade50,
                          borderRadius: constraints.maxWidth <= 480
                              ? BorderRadius.all(Radius.zero)
                              : BorderRadius.only(
                                  topLeft: Radius.circular(Doubles.sixteen),
                                  topRight: Radius.circular(Doubles.sixteen)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: cnstrt.maxWidth / 2 - Doubles.twentyFour,
                              height: Doubles.thirtySix,
                              decoration: BoxDecoration(
                                  color: _isLoginScreenVisible
                                      ? AppColors.red
                                      : Colors.transparent,
                                  borderRadius:
                                      BorderRadius.circular(Doubles.eight)),
                              child: InkWell(
                                onTap: () => _tabClick(true),
                                child: Center(
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                        color: _isLoginScreenVisible
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: cnstrt.maxWidth / 2 - Doubles.twentyFour,
                              height: Doubles.thirtySix,
                              decoration: BoxDecoration(
                                  color: _isLoginScreenVisible
                                      ? Colors.transparent
                                      : AppColors.red,
                                  borderRadius:
                                      BorderRadius.circular(Doubles.eight)),
                              child: InkWell(
                                onTap: () => _tabClick(false),
                                child: Center(
                                  child: Text(
                                    "Register",
                                    style: TextStyle(
                                        color: _isLoginScreenVisible
                                            ? Colors.black
                                            : Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(Doubles.sixteen),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              (_isLoginScreenVisible
                                  ? Container()
                                  : Container(
                                      margin:
                                          EdgeInsets.only(top: Doubles.sixteen),
                                      child: TextField(
                                          decoration: InputDecoration(
                                              labelText: "Full Name")),
                                    )),
                              Container(
                                  margin: EdgeInsets.only(top: Doubles.sixteen),
                                  child: TextField(
                                      decoration:
                                          InputDecoration(labelText: "Email"))),
                              Container(
                                  margin: EdgeInsets.only(top: Doubles.sixteen),
                                  child: TextField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                          labelText: "Password"))),
                              Container(
                                margin: EdgeInsets.only(top: Doubles.thirtySix),
                                width: Doubles.twoEighty,
                                height: Doubles.thirtySix,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.blue),
                                  ),
                                  child: Text(
                                    _isLoginScreenVisible
                                        ? "LOGIN"
                                        : "REGISTER",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onPressed: _buttonClick,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
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
