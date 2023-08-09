import 'package:flutter/material.dart';
import 'package:quote_app/presentation/ui_resources/custom_colors.dart';

class CustomTabBarView extends StatelessWidget {
  const CustomTabBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBarView(children: [
      Card(
        child: Text(
          'Test',
          style: TextStyle(color: darkColor),
        ),
      )
    ]);
  }
}
