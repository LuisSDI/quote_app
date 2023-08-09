import 'package:flutter/material.dart';
import 'package:quote_app/presentation/ui_resources/size_config.dart';
import 'package:quote_app/presentation/widgets/custom_searchbar.dart';
import 'package:quote_app/presentation/widgets/category_tabs.dart';

class QuoteView extends StatefulWidget {
  const QuoteView({super.key});

  @override
  State<QuoteView> createState() => _QuoteViewState();
}

class _QuoteViewState extends State<QuoteView> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          CustomSearchBar(),
          CategoryTabs(),
        ],
      ),
    );
  }
}
