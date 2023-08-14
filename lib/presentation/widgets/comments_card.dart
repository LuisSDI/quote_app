import 'package:flutter/material.dart';
import 'package:quote_app/gen/assets.gen.dart';
import 'package:quote_app/presentation/ui_resources/custom_colors.dart';
import 'package:quote_app/presentation/ui_resources/size_config.dart';

class CommentCard extends StatelessWidget {
  const CommentCard({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10))),
      elevation: 5,
      margin: EdgeInsets.zero,
      color: darkColor,
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: SizeConfig.blockSizeHorizontal * 2,
            horizontal: SizeConfig.blockSizeHorizontal * 2),
        child: Row(
          children: [
            Padding(
              padding:
                  EdgeInsets.only(right: SizeConfig.blockSizeHorizontal * 2),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(Assets.images.defaultImage.path)),
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '@lamda',
                  style: TextStyle(color: whiteColor, fontSize: 12),
                ),
                Text(
                  'Great quote!!!',
                  style: TextStyle(color: whiteColor, fontSize: 10),
                )
              ],
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: SizeConfig.blockSizeVertical * 2),
                const Text(
                  '12:05 PM',
                  style: TextStyle(color: whiteColor, fontSize: 12),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
