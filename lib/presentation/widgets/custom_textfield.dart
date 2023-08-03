import 'package:flutter/material.dart';
import 'package:quote_app/presentation/ui_resources/size_config.dart';

import '../ui_resources/custom_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.validator,
      required this.onSaved,
      required this.hintText});
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      width: SizeConfig.blockSizeHorizontal * 80,
      margin: EdgeInsets.only(bottom: SizeConfig.blockSizeHorizontal * 2.5),
      child: TextFormField(
        validator: validator,
        onSaved: onSaved,
        style: const TextStyle(fontSize: 20, color: darkColor),
        decoration: InputDecoration(
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: darkColor,
              ),
            ),
            enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
              color: darkColor,
            )),
            hintText: hintText,
            hintStyle: const TextStyle(
              fontSize: 20,
              color: darkColor,
            )),
      ),
    );
  }
}
