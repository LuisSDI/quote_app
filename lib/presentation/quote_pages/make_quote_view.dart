import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:quote_app/gen/assets.gen.dart';
import 'package:quote_app/presentation/ui_resources/custom_colors.dart';
import 'package:quote_app/presentation/ui_resources/size_config.dart';

class MakeQuoteView extends StatefulWidget {
  const MakeQuoteView({super.key});

  @override
  State<MakeQuoteView> createState() => _MakeQuoteViewState();
}

class _MakeQuoteViewState extends State<MakeQuoteView> {
  String quoteInterest = 'Happy';
  String quoteText = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit';
  final _formKey = GlobalKey<FormState>();
  List<String> listCategories = <String>[
    'Happy',
    'Sad',
    'Peace',
    'Love',
    'Original'
  ];
  int selectPicture = 1;
  List<String> listImages = [
    Assets.images.happyPhoto.path,
    Assets.images.image1.path,
    Assets.images.image2.path,
    Assets.images.image3.path,
    Assets.images.image4.path,
    Assets.images.image5.path,
    Assets.images.image6.path,
    Assets.images.image7.path,
    Assets.images.image8.path,
    Assets.images.image9.path,
    Assets.images.image10.path
  ];
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
                            const Text(
                              'Make a Quote!',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: darkColor,
                              child: IconButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                icon: const Icon(
                                  Feather.check,
                                  color: whiteColor,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: SizeConfig.blockSizeHorizontal * 2),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Quote',
                                style: TextStyle(fontSize: 17),
                              ),
                              Container(
                                  height: SizeConfig.blockSizeHorizontal * 25,
                                  padding: EdgeInsets.only(
                                      top: SizeConfig.blockSizeHorizontal * 2,
                                      bottom:
                                          SizeConfig.blockSizeHorizontal * 2),
                                  child: TextFormField(
                                    onSaved: (value) {
                                      setState(() {
                                        quoteText = value!;
                                      });
                                    },
                                    validator: (value) {
                                      if (value == null || value.length < 10) {
                                        return 'Please wite a quote with more that 10 characters';
                                      }
                                      return null;
                                    },
                                    initialValue: quoteText,
                                    keyboardType: TextInputType.multiline,
                                    maxLines: 10,
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
                                            fontWeight: FontWeight.normal)),
                                  )),
                              SizedBox(
                                height: SizeConfig.blockSizeHorizontal * 2,
                              ),
                              const Divider(
                                color: darkColor,
                                thickness: 2,
                              ),
                              const Text(
                                'Interest',
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    bottom: SizeConfig.blockSizeHorizontal * 2),
                                width: SizeConfig.blockSizeHorizontal * 25,
                                child: DropdownButtonFormField(
                                    isDense: true,
                                    style: const TextStyle(
                                        color: darkColor,
                                        height: 1,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900),
                                    items: listCategories
                                        .map<DropdownMenuItem<String>>(
                                            (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(
                                          value,
                                        ),
                                      );
                                    }).toList(),
                                    value: quoteInterest,
                                    onChanged: (value) {
                                      setState(() {
                                        quoteInterest = value!;
                                      });
                                    }),
                              ),
                              SizedBox(
                                height: SizeConfig.blockSizeHorizontal * 2,
                              ),
                              const Divider(
                                color: darkColor,
                                thickness: 2,
                              ),
                              SizedBox(
                                height: SizeConfig.blockSizeVertical * 65,
                                child: GridView.builder(
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 3,
                                            mainAxisSpacing:
                                                SizeConfig.blockSizeHorizontal *
                                                    2,
                                            crossAxisSpacing:
                                                SizeConfig.blockSizeHorizontal *
                                                    2),
                                    itemCount: 12,
                                    itemBuilder: (context, index) {
                                      if (index == 0) {
                                        return Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: index == selectPicture
                                                      ? redCrayola
                                                      : darkColor,
                                                  width: 3)),
                                          child: IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  selectPicture = index;
                                                });
                                              },
                                              icon: Icon(
                                                Entypo.plus,
                                                size: 45,
                                                color: index == selectPicture
                                                    ? redCrayola
                                                    : darkColor,
                                              )),
                                        );
                                      } else {
                                        return Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: index == selectPicture
                                                      ? redCrayola
                                                      : darkColor,
                                                  width: 3)),
                                          child: GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  selectPicture = index;
                                                });
                                              },
                                              child: Image.asset(
                                                listImages[index - 1],
                                                fit: BoxFit.cover,
                                              )),
                                        );
                                      }
                                    }),
                              )
                            ],
                          ),
                        ),
                      )
                    ]))));
  }
}
