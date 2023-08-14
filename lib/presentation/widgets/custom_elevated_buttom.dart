import 'package:flutter/material.dart';
import 'package:quote_app/presentation/ui_resources/custom_colors.dart';
import 'package:quote_app/presentation/ui_resources/size_config.dart';

class CustomElevatedButtom extends StatelessWidget {
  const CustomElevatedButtom(
      {super.key, required this.title, this.voidFunction});

  final String title;
  final void Function()? voidFunction;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SizedBox(
      height: SizeConfig.blockSizeHorizontal * 6,
      child: ElevatedButton(
          style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.symmetric(
                      horizontal: SizeConfig.blockSizeHorizontal * 2,
                      vertical: SizeConfig.blockSizeHorizontal * 0)),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              backgroundColor: MaterialStateProperty.all<Color>(darkColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                      side: const BorderSide(color: darkColor)))),
          onPressed: voidFunction,
          child: Text(title,
              style:
                  const TextStyle(fontSize: 12, fontWeight: FontWeight.bold))),
    );
  }
}
