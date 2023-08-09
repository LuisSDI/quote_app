import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:quote_app/gen/assets.gen.dart';
import 'package:quote_app/presentation/main_pages/quote_view.dart';
import 'package:quote_app/presentation/profile_pages/profile_view.dart';
import 'package:quote_app/presentation/ui_resources/custom_colors.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [const QuoteView(), const ProfileView()];
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  Assets.images.defaultImage.path,
                ),
              ),
            ),
            const Text(
              'Quote!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            CircleAvatar(
              radius: 20,
              backgroundColor: whiteColor,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Feather.edit_3,
                  color: darkColor,
                ),
              ),
            )
          ],
        ),
      ),
      body: AnimatedSwitcher(
          duration: const Duration(seconds: 2), child: pages[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: darkColor,
        selectedItemColor: whiteColor,
        unselectedItemColor: unactiveGrey,
        selectedLabelStyle:
            const TextStyle(color: whiteColor, fontWeight: FontWeight.bold),
        unselectedLabelStyle:
            const TextStyle(color: unactiveGrey, fontWeight: FontWeight.bold),
        items: const [
          BottomNavigationBarItem(
            label: 'Quotes',
            icon: Icon(
              Foundation.quote,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(
              Icons.person,
            ),
          )
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
