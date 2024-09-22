import 'package:flutter/material.dart';

class MyTabBar extends StatefulWidget {
  const MyTabBar({super.key});

  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> {
  final List tabs = ['For You', 'Today', 'Following', 'Recipes'];
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: SizedBox(
        height: 60,
        child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: tabs.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    current = index;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(microseconds: 300),
                  margin: const EdgeInsets.all(5),
                  width: 81,
                  height: 45,
                  decoration: BoxDecoration(
                      color:
                          current == index ? Colors.black : Colors.transparent,
                      borderRadius: BorderRadius.circular(25)),
                  child: Center(
                      child: Text(
                    tabs[index],
                    style: TextStyle(
                        color: current == index ? Colors.white : Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  )),
                ),
              );
            }),
      ),
    );
  }
}
