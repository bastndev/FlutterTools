import 'package:flutter/material.dart';
import 'package:tutorial2/src/pages/widgets/HomePage/tabs/home_tab.dart';
import 'package:tutorial2/src/pages/widgets/HomePage/tabs/profile_tab.dart';
import 'package:tutorial2/src/pages/widgets/HomePage/tabs/setting_tab.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: const Text('bottom sheet'),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.directions_car),
              ),
              Tab(
                icon: Icon(Icons.person_3),
              ),
              Tab(
                icon: Icon(Icons.settings),
              ),
            ],
          ),
        ),
        body: const TabBarView(children: [
          Home(),
          Profile(),
          Setting(),
        ]),
      ),
    );
  }
}
