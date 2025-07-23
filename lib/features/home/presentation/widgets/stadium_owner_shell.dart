import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:reserving_stadiums_app/core/constants/app_colors.dart';
import 'package:reserving_stadiums_app/features/home/presentation/pages/stadium_owner_home_page.dart';
import 'package:reserving_stadiums_app/features/home/presentation/pages/revenue_page.dart';
import 'package:reserving_stadiums_app/features/home/presentation/pages/settings_page.dart';

class StadiumOwnerShell extends StatefulWidget {
  const StadiumOwnerShell({super.key});

  @override
  State<StadiumOwnerShell> createState() => _StadiumOwnerShellState();
}

class _StadiumOwnerShellState extends State<StadiumOwnerShell> {
  int index = 1;
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  final screens = <Widget>[
    const RevenuePage(),
    const StadiumOwnerHomePage(),
    const SettingsPage()
  ];
  @override
  Widget build(BuildContext context) {
    final items = <CurvedNavigationBarItem>[
      CurvedNavigationBarItem(
        child: Icon(
          Icons.bar_chart,
          color: Colors.grey[700],
          size: 30,
        ),
      ),
      CurvedNavigationBarItem(
        child: Icon(
          Icons.home,
          color: Colors.grey[700],
          size: 30,
        ),
      ),
      CurvedNavigationBarItem(
        child: Icon(
          Icons.settings,
          color: Colors.grey[700],
          size: 30,
        ),
      ),
    ];
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: navigationKey,
          backgroundColor: AppColors.primaryColor,
          items: items,
          index: index,
          height: 60,
          onTap: (index) => setState(() {
            this.index = index;
          }),
        ),
        body: screens[index]);
  }
}
