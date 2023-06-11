import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_mobile/cubits/cubits.dart';
import 'package:netflix_mobile/screens/play/play_page.dart';

class NavScreenPlay extends StatefulWidget {
  @override
  _NavScreenPlayState createState() => _NavScreenPlayState();
}

class _NavScreenPlayState extends State<NavScreenPlay> {
  final List<Widget> _screens = [
    const PlayPage(key: PageStorageKey('playPage')),
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
  ];

  final Map<String, IconData> _icons = const {
    'Home': Icons.home,
    'Search': Icons.search,
    'Coming Soon': Icons.queue_play_next,
    'Downloads': Icons.file_download,
    'More': Icons.menu,
  };

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<AppBarCubit>(
        create: (_) => AppBarCubit(),
        child: _screens[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        items: _icons.entries
            .map((MapEntry<String, IconData> entry) => BottomNavigationBarItem(
                  icon: Icon(entry.value, size: 30.0),
                  label: entry.key,
                ))
            .toList(),
        currentIndex: _currentIndex,
        selectedItemColor: Colors.white,
        selectedFontSize: 11.0,
        unselectedItemColor: Colors.grey,
        unselectedFontSize: 11.0,
        onTap: (index) => setState(() => _currentIndex = index),
      ),
    );
  }
}
