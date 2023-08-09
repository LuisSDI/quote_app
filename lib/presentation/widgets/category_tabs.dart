import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:quote_app/presentation/ui_resources/custom_colors.dart';
import 'package:quote_app/presentation/ui_resources/size_config.dart';
import 'package:quote_app/presentation/widgets/quote_card.dart';

class CategoryTabs extends StatefulWidget {
  const CategoryTabs({super.key});

  @override
  State<CategoryTabs> createState() => _CategoryTabsState();
}

class _CategoryTabsState extends State<CategoryTabs> {
  int selectedTab = 1;
  @override
  Widget build(BuildContext context) {
    List<List<Widget>> tabs = [
      [
        for (var i = 0; i < 20; i++)
          const QuoteCard(
            category: 'Happy',
          )
      ],
      [
        for (var i = 0; i < 20; i++)
          const QuoteCard(
            category: 'Sad',
          )
      ],
      [
        for (var i = 0; i < 20; i++)
          const QuoteCard(
            category: 'Peace',
          )
      ],
      [
        for (var i = 0; i < 20; i++)
          const QuoteCard(
            category: 'Love',
          )
      ],
      [
        for (var i = 0; i < 20; i++)
          const QuoteCard(
            category: 'Death',
          )
      ],
      [
        for (var i = 0; i < 20; i++)
          const QuoteCard(
            category: 'Original',
          )
      ],
    ];
    SizeConfig().init(context);
    return DefaultTabController(
      length: 6,
      child: SizedBox(
        width: SizeConfig.screenWidth,
        child: Column(
          children: [
            ButtonsTabBar(
              onTap: (index) {
                setState(() {
                  selectedTab = index;
                });
              },
              unselectedDecoration: BoxDecoration(
                  color: unactiveGrey, borderRadius: BorderRadius.circular(20)),
              decoration: BoxDecoration(
                  color: darkColor, borderRadius: BorderRadius.circular(20)),
              height: SizeConfig.blockSizeHorizontal * 10,
              contentPadding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.blockSizeHorizontal * 5,
                  vertical: SizeConfig.blockSizeHorizontal * 2),
              labelStyle: const TextStyle(
                  color: whiteColor, fontWeight: FontWeight.bold),
              unselectedLabelStyle: const TextStyle(color: whiteColor),
              tabs: const [
                Tab(
                  text: 'Happy',
                ),
                Tab(
                  text: 'Sad',
                ),
                Tab(
                  text: 'Peace',
                ),
                Tab(
                  text: 'Love',
                ),
                Tab(
                  text: 'Death',
                ),
                Tab(
                  text: 'Original',
                ),
              ],
            ),
            AnimatedSwitcher(
                duration: const Duration(seconds: 1),
                child: SizedBox(
                  height: SizeConfig.blockSizeVertical * 70,
                  child: SingleChildScrollView(
                    child: Column(
                      children: tabs[selectedTab],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
