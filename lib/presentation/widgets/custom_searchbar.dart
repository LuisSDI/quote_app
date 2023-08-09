import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:quote_app/presentation/ui_resources/custom_colors.dart';
import 'package:quote_app/presentation/ui_resources/size_config.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal * 2),
      child: SizedBox(
        height: SizeConfig.blockSizeHorizontal * 10,
        child: TextField(
          textAlignVertical: TextAlignVertical.center,
          cursorColor: whiteColor,
          maxLines: 1,
          style: const TextStyle(color: whiteColor, fontSize: 14),
          decoration: InputDecoration(
              contentPadding: EdgeInsets.zero,
              hintText: 'Search',
              isCollapsed: true,
              hintStyle: const TextStyle(color: unactiveGrey, fontSize: 14),
              filled: true,
              prefixIconColor: whiteColor,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
              prefixIcon: const Icon(FontAwesome.search),
              fillColor: darkColor),
        ),
      ),
    );
  }
}
