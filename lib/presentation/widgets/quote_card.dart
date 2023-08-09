import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:quote_app/gen/assets.gen.dart';
import 'package:quote_app/presentation/ui_resources/custom_colors.dart';
import 'package:quote_app/presentation/ui_resources/size_config.dart';

class QuoteCard extends StatefulWidget {
  const QuoteCard({super.key, required this.category});

  final String category;

  @override
  State<QuoteCard> createState() => _QuoteCardState();
}

class _QuoteCardState extends State<QuoteCard> {
  final String dummyData =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a diam at diam laoreet posuere. Maecenas aliquet.';

  bool isLiked = false;
  int likes = 43;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: SizeConfig.blockSizeHorizontal * 1),
      child: SizedBox(
        height: SizeConfig.blockSizeVertical * 15,
        width: SizeConfig.blockSizeHorizontal * 95,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 5,
          margin: EdgeInsets.zero,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.zero,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10)),
                      child: Image.asset(
                        Assets.images.happyPhoto.path,
                        fit: BoxFit.contain,
                      ),
                    ),
                  )),
              Flexible(
                flex: 2,
                child: Center(
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: SizeConfig.blockSizeHorizontal * 2,
                        vertical: SizeConfig.blockSizeHorizontal * 1),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.category.toUpperCase(),
                              style: const TextStyle(
                                  color: greyText,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              '1 month ago',
                              style: TextStyle(
                                color: greyText,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: SizeConfig.blockSizeHorizontal * 1),
                          child: Text(
                            dummyData,
                            style:
                                const TextStyle(fontSize: 11, color: greyText),
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeHorizontal * 4.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right:
                                            SizeConfig.blockSizeHorizontal * 1),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image.asset(
                                          Assets.images.defaultImage.path),
                                    ),
                                  ),
                                  const Text(
                                    'Lorem Ipsum',
                                    style: TextStyle(
                                        color: darkColor, fontSize: 12),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: SizeConfig.blockSizeHorizontal * 8,
                                    child: TextButton(
                                      style: ButtonStyle(
                                          padding:
                                              MaterialStateProperty.all<EdgeInsets>(
                                                  EdgeInsets.zero),
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  isLiked
                                                      ? redCrayola
                                                      : whiteColor),
                                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                  side: BorderSide(
                                                      color: isLiked
                                                          ? redCrayola
                                                          : darkColor),
                                                  borderRadius:
                                                      BorderRadius.circular(12)))),
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
                                              color: isLiked
                                                  ? whiteColor
                                                  : darkColor,
                                              size: 10,
                                            ),
                                          ),
                                          Text(
                                            likes.toString(),
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: isLiked
                                                    ? whiteColor
                                                    : darkColor,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: SizeConfig.blockSizeHorizontal * 1,
                                  ),
                                  SizedBox(
                                    width: SizeConfig.blockSizeHorizontal * 8,
                                    child: TextButton(
                                      style: ButtonStyle(
                                          padding: MaterialStateProperty.all<
                                              EdgeInsets>(EdgeInsets.zero),
                                          shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                  side: const BorderSide(
                                                      color: darkColor),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12)))),
                                      onPressed: () {},
                                      child: const Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          FittedBox(
                                            fit: BoxFit.contain,
                                            child: Icon(
                                              Foundation.comment,
                                              color: darkColor,
                                              size: 12,
                                            ),
                                          ),
                                          Text(
                                            '6',
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
