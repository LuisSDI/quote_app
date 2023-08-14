import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:quote_app/gen/assets.gen.dart';
import 'package:quote_app/presentation/profile_pages/account_content.dart';
import 'package:quote_app/presentation/profile_pages/follow_content.dart';
import 'package:quote_app/presentation/profile_pages/quotes_content.dart';
import 'package:quote_app/presentation/ui_resources/custom_colors.dart';
import 'package:quote_app/presentation/ui_resources/size_config.dart';

class OtherProfileView extends StatefulWidget {
  const OtherProfileView({super.key});

  @override
  State<OtherProfileView> createState() => _OtherProfileViewState();
}

class _OtherProfileViewState extends State<OtherProfileView> {
  int selectedTab = 0;
  bool isFollowing = false;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    List<Widget> tabs = [
      const AccountContent(
        isOtherProfile: true,
      ),
      const QuotesContent(
        isOtherProfile: true,
      ),
      const FollowContent()
    ];
    return Scaffold(
      body: SafeArea(
        child: Column(
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
            Padding(
              padding: EdgeInsets.only(
                  top: SizeConfig.blockSizeHorizontal * 3,
                  left: SizeConfig.blockSizeHorizontal * 2,
                  right: SizeConfig.blockSizeHorizontal * 7),
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
                    padding: EdgeInsets.only(
                        left: SizeConfig.blockSizeHorizontal * 4),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '@wdlam',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w900),
                        ),
                        Text(
                          'Followers: 90',
                          style: TextStyle(
                              height: 1,
                              fontSize: 17,
                              fontWeight: FontWeight.w900),
                        ),
                        Text(
                          'Quotes: 3',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w900),
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  ElevatedButton(
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.symmetric(
                                  horizontal:
                                      SizeConfig.blockSizeHorizontal * 4,
                                  vertical:
                                      SizeConfig.blockSizeHorizontal * 3.5)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(darkColor),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: const BorderSide(color: darkColor)))),
                      onPressed: () => setState(() {
                            isFollowing = !isFollowing;
                          }),
                      child: Text(isFollowing ? 'Unfollow' : 'Follow',
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold)))
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
                  height: SizeConfig.blockSizeVertical * 75,
                  child: tabs[selectedTab],
                ))
          ],
        ),
      ),
    );
  }
}
