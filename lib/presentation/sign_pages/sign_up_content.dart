import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:quote_app/presentation/ui_resources/custom_colors.dart';
import 'package:quote_app/presentation/ui_resources/size_config.dart';
import 'package:quote_app/presentation/widgets/custom_textfield.dart';

class SignUpContent extends StatefulWidget {
  const SignUpContent({super.key});
  @override
  SignUpContentState createState() => SignUpContentState();
}

class SignUpContentState extends State<SignUpContent> {
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    //Column of Sign Up
    return Padding(
      padding: EdgeInsets.only(
          left: SizeConfig.blockSizeHorizontal * 7,
          right: SizeConfig.blockSizeHorizontal * 7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Hello Text
          const SizedBox(
            // height: SizeConfig.blockSizeHorizontal * 7,
            child: Text(
              'Hello,',
              style: TextStyle(
                  fontSize: 31, color: darkColor, fontWeight: FontWeight.bold),
            ),
          ),
          //Sign up  Text
          Container(
            // height: SizeConfig.blockSizeHorizontal * 8,
            margin: EdgeInsets.only(
                top: SizeConfig.blockSizeHorizontal * 1,
                bottom: SizeConfig.blockSizeHorizontal * 4),
            child: const Text(
              "Enter your information below\nor login with a social account",
              style: TextStyle(fontSize: 20, color: darkColor),
            ),
          ),

          // Email TextField
          CustomTextField(
              validator: (input) {
                if (input!.isEmpty) {
                  return 'Please type an email';
                }
                return null;
              },
              onSaved: (input) {},
              hintText: 'Email address'),
          // Password TextField
          CustomTextField(
              validator: (input) {
                if (input!.length < 6) {
                  return 'Your password needs to be at least 6 characters';
                }
                return null;
              },
              onSaved: (input) {},
              hintText: 'Password'),

          // Repeat Password TextField
          CustomTextField(
              validator: (input) {
                if (input != myController.text) {
                  return 'Password is not matching';
                }
                return null;
              },
              onSaved: (input) {},
              hintText: 'Password again'),

          // Google Icons
          Expanded(
            child: Row(
              children: <Widget>[
                // GOOGLE
                GestureDetector(
                  onTap: () async {},
                  child: Container(
                    margin: EdgeInsets.only(
                      top: SizeConfig.blockSizeHorizontal * 1,
                    ),
                    alignment: Alignment.center,
                    width: SizeConfig.blockSizeHorizontal * 10,
                    height: SizeConfig.blockSizeHorizontal * 10,
                    child: const Icon(
                      FontAwesome.google,
                      color: darkColor,
                      size: 35,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
