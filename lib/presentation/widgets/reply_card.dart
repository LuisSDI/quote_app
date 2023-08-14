import 'package:flutter/material.dart';
import 'package:quote_app/gen/assets.gen.dart';
import 'package:quote_app/presentation/ui_resources/custom_colors.dart';
import 'package:quote_app/presentation/ui_resources/size_config.dart';

class ReplyCard extends StatelessWidget {
  const ReplyCard({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: SizeConfig.blockSizeHorizontal * 2),
      child: Card(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        elevation: 5,
        margin: EdgeInsets.zero,
        color: whiteColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(right: SizeConfig.blockSizeHorizontal * 2),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(Assets.images.defaultImage.path)),
              ),
              SizedBox(
                // height: SizeConfig.blockSizeHorizontal * 10,
                width: SizeConfig.blockSizeHorizontal * 78,
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  cursorColor: whiteColor,
                  maxLines: 2,
                  style: const TextStyle(color: whiteColor, fontSize: 12),
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.all(SizeConfig.blockSizeHorizontal),
                      hintText: 'Type your comment',
                      isCollapsed: true,
                      hintStyle:
                          const TextStyle(color: unactiveGrey, fontSize: 12),
                      filled: true,
                      prefixIconColor: whiteColor,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      fillColor: darkColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
