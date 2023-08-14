import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:quote_app/gen/assets.gen.dart';
import 'package:quote_app/presentation/ui_resources/custom_colors.dart';
import 'package:quote_app/presentation/ui_resources/size_config.dart';
import 'package:quote_app/presentation/widgets/profile_field.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({super.key});

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  int selectedTab = 0;
  String userInterest = 'Happy';
  String userUsername = 'wdlam';
  String userBio = 'I’m Senior Frontend Developer from Microsoft';
  bool isEditing = false;
  List<String> list = <String>['Happy', 'Sad', 'Peace', 'Love', 'Original'];

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
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
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: darkColor,
                      child: IconButton(
                        onPressed: () {
                          if (isEditing) {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              setState(() {
                                isEditing = !isEditing;
                              });
                            }
                          } else {
                            setState(() {
                              isEditing = !isEditing;
                            });
                          }
                        },
                        icon: Icon(
                          isEditing ? Feather.check : Icons.person,
                          color: whiteColor,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: SizeConfig.blockSizeHorizontal * 3,
                    left: SizeConfig.blockSizeHorizontal * 5,
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '@$userUsername',
                            style: const TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w900),
                          ),
                          const Text(
                            'Followers: 90',
                            style: TextStyle(
                                height: 1,
                                fontSize: 17,
                                fontWeight: FontWeight.w900),
                          ),
                          const Text(
                            'Quotes: 3',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w900),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal * 5),
                        child: const Text(
                          'Account',
                          style: TextStyle(fontSize: 20),
                        ),
                      )),
                  Column(
                    children: isEditing
                        ? [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      SizeConfig.blockSizeHorizontal * 5,
                                  vertical: SizeConfig.blockSizeHorizontal * 2),
                              child: Form(
                                  key: _formKey,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(
                                            bottom:
                                                SizeConfig.blockSizeHorizontal *
                                                    2),
                                        width:
                                            SizeConfig.blockSizeHorizontal * 25,
                                        child: DropdownButtonFormField(
                                            isDense: true,
                                            style: const TextStyle(
                                                color: darkColor,
                                                height: 1,
                                                fontSize: 17,
                                                fontWeight: FontWeight.w900),
                                            items: list
                                                .map<DropdownMenuItem<String>>(
                                                    (String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(
                                                  value,
                                                ),
                                              );
                                            }).toList(),
                                            value: userInterest,
                                            onChanged: (value) {
                                              setState(() {
                                                userInterest = value!;
                                              });
                                            }),
                                      ),
                                      const Text(
                                        'Interest',
                                        style: TextStyle(
                                          fontSize: 17,
                                        ),
                                      ),
                                      SizedBox(
                                        height:
                                            SizeConfig.blockSizeHorizontal * 2,
                                      ),
                                      const Divider(
                                        color: darkColor,
                                        thickness: 2,
                                      ),
                                      Container(
                                          padding: EdgeInsets.only(
                                              top: SizeConfig
                                                      .blockSizeHorizontal *
                                                  2,
                                              bottom: SizeConfig
                                                      .blockSizeHorizontal *
                                                  2),
                                          child: TextFormField(
                                            validator: (value) {
                                              if (value == null ||
                                                  value.length < 5) {
                                                return 'Please enter a username with more that 4 characters';
                                              }
                                              return null;
                                            },
                                            onSaved: (value) {
                                              setState(() {
                                                userUsername = value!;
                                              });
                                            },
                                            initialValue: userUsername,
                                            style: const TextStyle(
                                                color: darkColor,
                                                height: 1,
                                                fontSize: 17,
                                                fontWeight: FontWeight.w900),
                                            decoration: InputDecoration(
                                                contentPadding:
                                                    const EdgeInsets.all(5),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                hintText: 'Type your username.',
                                                hintStyle: const TextStyle(
                                                    height: 1,
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.normal)),
                                          )),
                                      const Text(
                                        'Username',
                                        style: TextStyle(
                                          fontSize: 17,
                                        ),
                                      ),
                                      SizedBox(
                                        height:
                                            SizeConfig.blockSizeHorizontal * 2,
                                      ),
                                      const Divider(
                                        color: darkColor,
                                        thickness: 2,
                                      ),
                                      Container(
                                          padding: EdgeInsets.only(
                                              top: SizeConfig
                                                      .blockSizeHorizontal *
                                                  2,
                                              bottom: SizeConfig
                                                      .blockSizeHorizontal *
                                                  2),
                                          child: TextFormField(
                                            onSaved: (value) {
                                              setState(() {
                                                userBio = value!;
                                              });
                                            },
                                            validator: (value) {
                                              if (value == null ||
                                                  value.length < 10) {
                                                return 'Please wite a bio with more that 10 characters';
                                              }
                                              return null;
                                            },
                                            initialValue: userBio,
                                            keyboardType:
                                                TextInputType.multiline,
                                            maxLines: 3,
                                            style: const TextStyle(
                                                color: darkColor,
                                                height: 1,
                                                fontSize: 17,
                                                fontWeight: FontWeight.w900),
                                            decoration: InputDecoration(
                                                contentPadding:
                                                    const EdgeInsets.all(10),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                hintText: 'Type your bio.',
                                                hintStyle: const TextStyle(
                                                    height: 1,
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.normal)),
                                          )),
                                      const Text(
                                        'Bio',
                                        style: TextStyle(
                                          fontSize: 17,
                                        ),
                                      ),
                                      SizedBox(
                                        height:
                                            SizeConfig.blockSizeHorizontal * 2,
                                      ),
                                      const Divider(
                                        color: darkColor,
                                        thickness: 2,
                                      )
                                    ],
                                  )),
                            )
                          ]
                        : [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      SizeConfig.blockSizeHorizontal * 5,
                                  vertical: SizeConfig.blockSizeHorizontal * 2),
                              child: ProfileField(
                                  title: 'Interest', content: userInterest),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      SizeConfig.blockSizeHorizontal * 5,
                                  vertical: SizeConfig.blockSizeHorizontal * 2),
                              child: ProfileField(
                                  title: 'Username', content: userUsername),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      SizeConfig.blockSizeHorizontal * 5,
                                  vertical: SizeConfig.blockSizeHorizontal * 2),
                              child:
                                  ProfileField(title: 'Bio', content: userBio),
                            ),
                            Visibility(
                              visible: !isEditing,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      padding: MaterialStateProperty.all<EdgeInsets>(
                                          EdgeInsets.symmetric(
                                              horizontal: SizeConfig.blockSizeHorizontal *
                                                  4,
                                              vertical: SizeConfig.blockSizeHorizontal *
                                                  3.5)),
                                      foregroundColor: MaterialStateProperty.all<Color>(
                                          Colors.white),
                                      backgroundColor: MaterialStateProperty.all<Color>(
                                          darkColor),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20), side: const BorderSide(color: darkColor)))),
                                  onPressed: () => Navigator.pushNamedAndRemoveUntil(context, '/signScreen', (route) => false),
                                  child: const Text('Sign Out', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold))),
                            )
                          ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
