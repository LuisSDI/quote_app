import 'package:flutter/material.dart';
import 'package:quote_app/presentation/ui_resources/size_config.dart';
import 'package:quote_app/presentation/widgets/profile_card.dart';

class FollowContent extends StatelessWidget {
  const FollowContent({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.blockSizeHorizontal * 1.5,
            vertical: SizeConfig.blockSizeHorizontal * 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [for (var i = 0; i < 20; i++) const ProfileCard()],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
