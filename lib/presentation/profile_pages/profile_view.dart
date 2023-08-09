import 'package:flutter/material.dart';
import 'package:quote_app/gen/assets.gen.dart';
import 'package:quote_app/presentation/profile_pages/account_content.dart';
import 'package:quote_app/presentation/profile_pages/follow_content.dart';
import 'package:quote_app/presentation/profile_pages/quotes_content.dart';
import 'package:quote_app/presentation/ui_resources/custom_colors.dart';
import 'package:quote_app/presentation/ui_resources/size_config.dart';
import 'package:quote_app/presentation/widgets/profile_card.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    List<Widget> tabs = [
      const AccountContent(),
      const QuotesContent(),
      const FollowContent()
    ];
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              top: SizeConfig.blockSizeHorizontal * 3,
              left: SizeConfig.blockSizeHorizontal * 2),
          child: Row(
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
                padding:
                    EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 4),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '@wdlam',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                    ),
                    Text(
                      'Followers: 90',
                      style: TextStyle(
                          height: 1, fontSize: 17, fontWeight: FontWeight.w900),
                    ),
                    Text(
                      'Quotes: 3',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w900),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.blockSizeHorizontal * 4),
          child: SizedBox(
            height: SizeConfig.blockSizeHorizontal * 10,
            child: DefaultTabController(
              length: 3,
              child: TabBar(
                  onTap: (value) {
                    setState(() {
                      selectedTab = value;
                    });
                  },
                  indicatorColor: greyText,
                  labelColor: darkColor,
                  unselectedLabelStyle: const TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins',
                  ),
                  labelStyle: const TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w900),
                  tabs: const [
                    Tab(
                      text: 'Account',
                    ),
                    Tab(
                      text: 'Quotes',
                    ),
                    Tab(
                      text: 'Follows',
                    )
                  ]),
            ),
          ),
        ),
        AnimatedSwitcher(
            duration: const Duration(seconds: 1),
            child: SizedBox(
              height: SizeConfig.blockSizeVertical * 65.60,
              child: tabs[selectedTab],
            ))
      ],
    );
  }
}
