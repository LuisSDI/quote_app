import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:quote_app/gen/assets.gen.dart';
import 'package:quote_app/presentation/ui_resources/custom_colors.dart';
import 'package:quote_app/presentation/ui_resources/size_config.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: SizeConfig.blockSizeHorizontal * 2,
          horizontal: SizeConfig.blockSizeHorizontal * 1),
      child: SizedBox(
        height: SizeConfig.blockSizeHorizontal * 22.5,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 5,
          margin: EdgeInsets.zero,
          color: darkColor,
          child: Padding(
            padding: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        Assets.images.defaultImage.path,
                        fit: BoxFit.contain,
                        height: SizeConfig.blockSizeHorizontal * 20,
                        width: SizeConfig.blockSizeHorizontal * 20,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: SizeConfig.blockSizeHorizontal * 4),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '@wdlam',
                            style: TextStyle(
                                color: whiteColor,
                                fontSize: 25,
                                fontWeight: FontWeight.w900),
                          ),
                          Text(
                            'Followers: 30',
                            style: TextStyle(
                                color: whiteColor,
                                height: 1,
                                fontSize: 17,
                                fontWeight: FontWeight.w900),
                          ),
                          Text(
                            'Quotes: 7',
                            style: TextStyle(
                                color: whiteColor,
                                fontSize: 17,
                                fontWeight: FontWeight.w900),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.blockSizeHorizontal * 4),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: whiteColor,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Ionicons.person,
                        color: darkColor,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
