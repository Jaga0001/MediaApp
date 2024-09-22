import 'package:flutter/material.dart';
import 'package:social_media_app/components/my_bottom_nav.dart';
import 'package:social_media_app/components/my_grid_view.dart';
import 'package:social_media_app/components/my_story.dart';
import 'package:social_media_app/components/my_tab_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List stories = [];
  bool isLoading = true;
  bool hasError = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //* GridView
          Column(
            children: [
              //* TabBar
              MyTabBar(),

              //* Stories
              SizedBox(height: 115, child: MyStory()),

              //* GridView Stories
              Expanded(child: MyGridView()),
            ],
          ),

          //* Bottom Navigation
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: MyBottomNav(),
            ),
          ),
        ],
      ),
    );
  }
}
