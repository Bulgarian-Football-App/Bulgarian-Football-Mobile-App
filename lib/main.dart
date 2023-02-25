import 'package:bg_football_app/pages/favourite_team_page.dart';
import 'package:bg_football_app/pages/news_page.dart';
import 'package:bg_football_app/pages/profile_page.dart';
import 'package:bg_football_app/pages/results_page.dart';
import 'package:bg_football_app/pages/stats_page.dart';
import 'package:bg_football_app/utils/color_constants.dart';
import 'package:bg_football_app/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BG Football App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  List<Widget> pages = [
    const ResultsPage(),
    const NewsPage(),
    const FavouriteTeamPage(),
    const StatsPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorConstants.mainBlack,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.sports_soccer,
              size: 24,
            ),
            label: "Резултати",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.newspaper,
              size: 24,
            ),
            label: "Новини",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/teams/beroe.png",
              width: 50,
              height: 42,
              fit: BoxFit.contain),
            label: "Любим",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.show_chart,
              size: 24,
            ),
            label: "Статистики",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.perm_identity,
              size: 24,
            ),
            label: "Профил",
          ),
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
