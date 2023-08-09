import 'package:flutter/material.dart';
import 'package:quote_app/presentation/ui_resources/size_config.dart';
import 'package:quote_app/presentation/widgets/quote_card.dart';

class QuotesContent extends StatelessWidget {
  const QuotesContent({super.key});

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
            const Text(
              'Your Quotes',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w900),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const QuoteCard(category: 'Happy'),
                  SizedBox(
                    width: SizeConfig.blockSizeHorizontal * 2,
                  ),
                  const QuoteCard(
                    category: 'Original',
                  )
                ],
              ),
            ),
            const Text(
              'Liked Quotes',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w900),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    for (var i = 0; i < 20; i++)
                      const QuoteCard(
                        category: 'Happy',
                      )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
