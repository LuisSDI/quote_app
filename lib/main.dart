import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quote_app/gen/assets.gen.dart';
import 'package:quote_app/presentation/main_pages/main_view.dart';
import 'package:quote_app/presentation/profile_pages/edit_profile_view.dart';
import 'package:quote_app/presentation/profile_pages/other_profile_view.dart';
import 'package:quote_app/presentation/sign_pages/sign_page.dart';
import 'package:quote_app/presentation/splash/splashscreen.dart';
import 'package:json_theme/json_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final themeStr = await rootBundle.loadString(Assets.theme.appainterTheme);
  final themeJson = jsonDecode(themeStr);
  final theme = ThemeDecoder.decodeThemeData(themeJson)!;
  runApp(MyApp(
    theme: theme,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.theme});
  final ThemeData theme;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quote',
      theme: theme,
      // ThemeData(
      //   // This is the theme of your application.
      //   //
      //   // TRY THIS: Try running your application with "flutter run". You'll see
      //   // the application has a blue toolbar. Then, without quitting the app,
      //   // try changing the seedColor in the colorScheme below to Colors.green
      //   // and then invoke "hot reload" (save your changes or press the "hot
      //   // reload" button in a Flutter-supported IDE, or press "r" if you used
      //   // the command line to start the app).
      //   //
      //   // Notice that the counter didn't reset back to zero; the application
      //   // state is not lost during the reload. To reset the state, use hot
      //   // restart instead.
      //   //
      //   // This works for code too, not just values: Most code changes can be
      //   // tested with just a hot reload.
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
      //   useMaterial3: true,
      // ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/splashScreen',

      routes: {
        '/signScreen': (context) => const SignPage(),
        '/mainScreen': (context) => const MainView(),
        '/splashScreen': (context) =>
            const SplashScreen(nextScreen: SignPage()),
        '/other_profile': (context) => const OtherProfileView(),
        '/edit_profile': (context) => const EditProfileView(),
      },
    );
  }
}
