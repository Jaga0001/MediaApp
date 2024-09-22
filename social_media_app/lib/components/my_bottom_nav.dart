import 'package:flutter/material.dart';

class MyBottomNav extends StatelessWidget {
  const MyBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(35.0),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Image.asset(
                'assets/home.png',
                width: 30,
                height: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Image.asset(
                'assets/glass.png',
                width: 30,
                height: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Image.asset(
                'assets/bell.png',
                width: 30,
                height: 30,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://i.pinimg.com/originals/15/80/47/15804790beb41b0758b91945cfe0a9df.jpg'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
