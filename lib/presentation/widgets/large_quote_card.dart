import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:quote_app/gen/assets.gen.dart';
import 'package:quote_app/presentation/ui_resources/custom_colors.dart';
import 'package:quote_app/presentation/ui_resources/size_config.dart';
import 'package:quote_app/presentation/widgets/custom_elevated_buttom.dart';

class LargeQuoteCard extends StatefulWidget {
  const LargeQuoteCard({super.key});

  @override
  State<LargeQuoteCard> createState() => _LargeQuoteCardState();
}

class _LargeQuoteCardState extends State<LargeQuoteCard> {
  bool isLiked = false;
  int likes = 43;
  @override
  Widget build(BuildContext context) {
    return Card(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        elevation: 5,
        margin: EdgeInsets.zero,
        color: whiteColor,
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: SizeConfig.blockSizeHorizontal * 4,
              horizontal: SizeConfig.blockSizeHorizontal * 2),
          child: Column(children: [
            Row(children: [
              Padding(
                padding:
                    EdgeInsets.only(right: SizeConfig.blockSizeHorizontal * 2),
                child: Image.asset(Assets.images.defaultImage.path),
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'QUOTE BY',
                    style: TextStyle(color: greyText, fontSize: 12),
                  ),
                  Text(
                    '@LoremIpsum',
                    style: TextStyle(
                        color: darkColor,
                        fontWeight: FontWeight.w900,
                        fontSize: 12),
                  )
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  const CustomElevatedButtom(title: 'Profile'),
                  SizedBox(
                    height: SizeConfig.blockSizeHorizontal * 1,
                  ),
                  const CustomElevatedButtom(title: 'Follow')
                ],
              )
            ]),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.blockSizeHorizontal * 3),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  Assets.images.happyPhoto.path,
                  fit: BoxFit.cover,
                  height: SizeConfig.blockSizeVertical * 22.5,
                  width: SizeConfig.blockSizeHorizontal * 90,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'HAPPY',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: SizeConfig.blockSizeHorizontal * 10,
                      height: SizeConfig.blockSizeHorizontal * 5,
                      child: TextButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.zero),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                isLiked ? redCrayola : whiteColor),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    side: BorderSide(
                                        color:
                                            isLiked ? redCrayola : darkColor),
                                    borderRadius: BorderRadius.circular(12)))),
                        onPressed: () {
                          setState(() {
                            isLiked ? likes-- : likes++;
                            isLiked = !isLiked;
                          });
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            FittedBox(
                              fit: BoxFit.contain,
                              child: Icon(
                                AntDesign.heart,
                                color: isLiked ? whiteColor : darkColor,
                                size: 8,
                              ),
                            ),
                            Text(
                              likes.toString(),
                              style: TextStyle(
                                  fontSize: 10,
                                  color: isLiked ? whiteColor : darkColor,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a diam at diam laoreet posuere. Maecenas aliquet.',
                  style: TextStyle(fontSize: 14),
                ))
          ]),
        ));
  }
}
