import 'package:coolicons/coolicons.dart';
import 'package:flutter/material.dart';
import 'package:shutis_nom/page/tab/book_list.dart';
import 'package:shutis_nom/page/tab/save_book.dart';
import 'package:shutis_nom/page/tab/settings.dart';
import 'package:shutis_nom/page/tab/student.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentIndex = _pageController.page?.ceil() ?? 0;
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView(
        controller: _pageController,
        children: [
          const BookList(),
          SaveBook(),
          Student(),
          const SettingsPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: navigate,
        backgroundColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.blue,
        selectedItemColor: Colors.blue.shade900,
        items: const [
          BottomNavigationBarItem(label: "Ном", icon: Icon(Icons.book)),
          BottomNavigationBarItem(
              label: "Хадгалсан", icon: Icon(Coolicons.tag)),
          BottomNavigationBarItem(label: "Оюутан", icon: Icon(Icons.person)),
          BottomNavigationBarItem(
              label: "Тохиргоо", icon: Icon(Icons.settings)),
        ],
      ),
    );
  }

  void navigate(int a) {
    _pageController.animateToPage(a,
        duration: const Duration(microseconds: 200), curve: Curves.easeInOut);
  }
}
