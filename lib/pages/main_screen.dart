import 'package:flutter/material.dart';
import 'package:equal/pages/search_screen.dart';
import 'package:equal/pages/video_screen.dart';
import 'home.dart';
import 'login_screen.dart';
import 'career_test.dart';
import 'video_screen.dart';
import 'profile_screen.dart';
import 'package:equal/context_extension.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late PageController _pageController;
  int currentIndex = 0;
  List pages = [
    const Home(),
    const Search(),
    const Videos(),
    const Profile(),
  ];

  void _openCart() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: onPageChanged,
        children: List.generate(pages.length, (context) => pages[context]),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          height: context.dynamicHeight(0.07),
          width: context.dynamicWidth(1),
          margin: EdgeInsets.symmetric(vertical: context.dynamicHeight(0.1)),
          child: Image.asset('assets/images/logo.png'),
        ),
        actions: [
          TextButton(
            onPressed: _openCart,
            child: const Icon(Icons.shopping_cart),
            style: ButtonStyle(
                foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.white)),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const SizedBox(width: 7.0),
            barIcon(icon: Icons.home, index: 0),
            barIcon(icon: Icons.search, index: 1),
            barIcon(icon: Icons.play_arrow, index: 2),
            barIcon(icon: Icons.account_box, index: 3),
            const SizedBox(width: 7.0),
          ],
        ),
        color: Colors.white,
      ),
    );
  }

  void navigationTapped(int page) {
    _pageController.jumpToPage(page);
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void onPageChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  Widget barIcon(
      {IconData icon = Icons.home, int index = 0, bool badge = false}) {
    return IconButton(
      icon: Icon(icon, size: 24.0),
      color: currentIndex == index
          ? Theme.of(context).colorScheme.secondary
          : Colors.blueGrey[300],
      onPressed: () => _pageController.jumpToPage(index),
    );
  }
}
