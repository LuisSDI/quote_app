import 'package:flutter/material.dart';
import 'package:quote_app/presentation/ui_resources/custom_colors.dart';
import 'package:quote_app/presentation/ui_resources/size_config.dart';

class ProfileField extends StatelessWidget {
  const ProfileField({super.key, required this.title, required this.content});

  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          content,
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w900),
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 17,
          ),
        ),
        SizedBox(
          height: SizeConfig.blockSizeHorizontal * 2,
        ),
        const Divider(
          color: darkColor,
          thickness: 2,
        )
      ],
    );
  }
}
