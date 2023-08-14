import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:quote_app/presentation/ui_resources/custom_colors.dart';
import 'package:quote_app/presentation/ui_resources/size_config.dart';
import 'package:quote_app/presentation/widgets/comments_card.dart';
import 'package:quote_app/presentation/widgets/large_quote_card.dart';
import 'package:quote_app/presentation/widgets/reply_card.dart';

class ViewQuoteView extends StatefulWidget {
  const ViewQuoteView({super.key});

  @override
  State<ViewQuoteView> createState() => _ViewQuoteViewState();
}

class _ViewQuoteViewState extends State<ViewQuoteView> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: SizeConfig.blockSizeHorizontal * 5,
                            left: SizeConfig.blockSizeHorizontal * 2,
                            right: SizeConfig.blockSizeHorizontal * 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: IconButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    icon: const Icon(
                                      Ionicons.chevron_back,
                                      size: 25,
                                    ))),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: SizeConfig.blockSizeHorizontal * 2),
                        child: const Column(
                          children: [
                            LargeQuoteCard(),
                            CommentCard(),
                            ReplyCard()
                          ],
                        ),
                      )
                    ]))));
  }
}
