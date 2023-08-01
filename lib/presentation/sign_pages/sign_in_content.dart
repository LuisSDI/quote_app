import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:quote_app/presentation/ui_resources/custom_colors.dart';
import 'package:quote_app/presentation/ui_resources/size_config.dart';

class SignInContent extends StatefulWidget {
  const SignInContent({super.key});
  @override
  SignInContentState createState() => SignInContentState();
}

class SignInContentState extends State<SignInContent> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    //Column of Sign In Content
    return Padding(
      padding: EdgeInsets.only(
          left: SizeConfig.blockSizeHorizontal * 7,
          right: SizeConfig.blockSizeHorizontal * 7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Welcome Back Text
          const SizedBox(
            // height: SizeConfig.blockSizeHorizontal * 7,
            child: Text(
              'Welcome Back,',
              style: TextStyle(
                  fontSize: 31, color: darkColor, fontWeight: FontWeight.bold),
            ),
          ),
          //Sign in to continue Text
          Container(
            margin: EdgeInsets.only(
                top: SizeConfig.blockSizeHorizontal,
                bottom: SizeConfig.blockSizeHorizontal * 5),
            child: const Text(
              'Sign in to continue',
              style: TextStyle(fontSize: 20, color: darkColor),
            ),
          ),
          // Email TextField
          Container(
            width: SizeConfig.blockSizeHorizontal * 80,
            // height: SizeConfig.blockSizeHorizontal * 5,
            margin: EdgeInsets.only(bottom: SizeConfig.blockSizeHorizontal * 5),
            child: TextFormField(
              validator: (input) {
                if (input!.isEmpty) {
                  return 'Please type an email';
                }
                return null;
              },
              onSaved: (input) {},
              style: const TextStyle(fontSize: 20, color: darkColor),
              decoration: const InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: darkColor,
                    ),
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: darkColor,
                  )),
                  hintText: 'Email address',
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: darkColor,
                  )),
            ),
          ),
          // Password TextField
          SizedBox(
            width: SizeConfig.blockSizeHorizontal * 80,
            // height: SizeConfig.blockSizeHorizontal * 5,
            child: TextFormField(
              validator: (input) {
                if (input!.length < 6) {
                  return 'Your password needs to be at least 6 characters';
                }
                return null;
              },
              onSaved: (input) {},
              obscureText: true,
              style: const TextStyle(fontSize: 20, color: darkColor),
              decoration: const InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: darkColor,
                    ),
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: darkColor,
                  )),
                  hintText: 'Password',
                  hintStyle: TextStyle(fontSize: 20, color: darkColor)),
            ),
          ),
          // Google Icon
          Row(
            children: <Widget>[
              // GOOGLE
              GestureDetector(
                onTap: () async {},
                child: Container(
                  margin: EdgeInsets.only(
                    top: SizeConfig.blockSizeHorizontal * 3,
                  ),
                  alignment: Alignment.center,
                  // width: SizeConfig.blockSizeHorizontal * 10,
                  height: SizeConfig.blockSizeHorizontal * 15,
                  child: const FittedBox(
                      fit: BoxFit.contain,
                      child: Icon(
                        FontAwesome.google,
                        color: darkColor,
                        size: 35,
                      )),
                ),
              ),
            ],
          ),
          const Spacer(),
          // Forgot password Text
          GestureDetector(
            onTap: () {},
            child: Container(
              alignment: Alignment.centerLeft,
              // margin: EdgeInsets.only(bottom: SizeConfig.blockSizeHorizontal * 3.5),
              child: const Text(
                'Forgot password?',
                style: TextStyle(fontSize: 16, color: darkColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
