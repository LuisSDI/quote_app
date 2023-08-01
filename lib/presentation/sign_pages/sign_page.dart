import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:quote_app/gen/assets.gen.dart';
import 'package:quote_app/presentation/sign_pages/sign_in_content.dart';
import 'package:quote_app/presentation/ui_resources/custom_colors.dart';
import 'package:quote_app/presentation/ui_resources/size_config.dart';

class SignPage extends StatefulWidget {
  const SignPage({super.key});

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  bool isSignIn = true;
  @override
  Widget build(BuildContext context) {
    Widget myAnimatedWidget = const SignInContent();
    if (isSignIn == false) {
      myAnimatedWidget = Container(
        color: darkColor,
      );
    }
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SizedBox(
          height: SizeConfig.screenHeight,
          width: SizeConfig.screenWidth,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: SizeConfig.screenWidth * .1),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        Assets.icon.icon.path,
                        height: SizeConfig.screenWidth * .3,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.blockSizeHorizontal * 8,
                        vertical: SizeConfig.blockSizeHorizontal * 2.5),
                    height: SizeConfig.blockSizeHorizontal * 15,
                    width: SizeConfig.blockSizeHorizontal * 45,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isSignIn = true;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: isSignIn
                                ? SizeConfig.blockSizeHorizontal * .5
                                : SizeConfig.blockSizeHorizontal * .9),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: !isSignIn
                                        ? Colors.transparent
                                        : darkColor,
                                    width: 2))),
                        child: FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                  fontSize: isSignIn ? 28 : 20,
                                  color: isSignIn ? darkColor : darkColor,
                                  fontWeight: FontWeight.normal),
                            )),
                      ),
                    ),
                  ),
                  //Sign Up Contanier
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.blockSizeHorizontal * 8,
                        vertical: SizeConfig.blockSizeHorizontal * 2.5),
                    height: SizeConfig.blockSizeHorizontal * 15,
                    width: SizeConfig.blockSizeHorizontal * 45,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          // _myAnimatedWidget = SignUpContent(this);
                          isSignIn = false;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: !isSignIn
                                ? SizeConfig.blockSizeHorizontal * .5
                                : SizeConfig.blockSizeHorizontal * .9),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: isSignIn
                                        ? Colors.transparent
                                        : darkColor,
                                    width: 2))),
                        child: FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                  fontSize: !isSignIn ? 28 : 20,
                                  color: isSignIn ? darkColor : darkColor,
                                  fontWeight: FontWeight.normal),
                            )),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeHorizontal * 100,
                child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 1500),
                    child: myAnimatedWidget),
              ),
              const Spacer(),

              /// Arrow Buttom
              SizedBox(
                height: SizeConfig.blockSizeHorizontal * 25,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Container(
                    height: SizeConfig.blockSizeHorizontal * 15,
                    decoration: const BoxDecoration(color: darkColor),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      alignment: const Alignment(0.75, -1),
                      child: Container(
                        alignment: Alignment.center,
                        width: SizeConfig.blockSizeHorizontal * 20,
                        height: SizeConfig.blockSizeHorizontal * 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: whiteColor, width: 2),
                          color: darkColor,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black38,
                              blurRadius: 4.0,
                              // soften the shadow//extend the shadow
                              offset: Offset(
                                0,
                                6,
                              ),
                            ),
                          ],
                        ),
                        child: const FittedBox(
                            fit: BoxFit.contain,
                            child: Icon(
                              AntDesign.arrowright,
                              color: Colors.white,
                              size: 35,
                            )),
                      ),
                    ),
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
