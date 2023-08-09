import 'package:flutter/material.dart';
import 'package:quote_app/presentation/ui_resources/custom_colors.dart';
import 'package:quote_app/presentation/ui_resources/size_config.dart';
import 'package:quote_app/presentation/widgets/profile_field.dart';

class AccountContent extends StatelessWidget {
  const AccountContent({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.blockSizeHorizontal * 5,
              vertical: SizeConfig.blockSizeHorizontal * 2),
          child: const ProfileField(title: 'Interest', content: 'Happy'),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.blockSizeHorizontal * 5,
              vertical: SizeConfig.blockSizeHorizontal * 2),
          child: const ProfileField(title: 'Username', content: '@wdlam'),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.blockSizeHorizontal * 5,
              vertical: SizeConfig.blockSizeHorizontal * 2),
          child: const ProfileField(
              title: 'Bio',
              content: 'I’m Senior Frontend Developer from Microsoft'),
        ),
        ElevatedButton(
            style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.symmetric(
                        horizontal: SizeConfig.blockSizeHorizontal * 4,
                        vertical: SizeConfig.blockSizeHorizontal * 3.5)),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                backgroundColor: MaterialStateProperty.all<Color>(darkColor),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(color: darkColor)))),
            onPressed: () =>
                Navigator.pushReplacementNamed(context, '/signScreen'),
            child: const Text('Sign Out',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)))
      ],
    );
  }
}
