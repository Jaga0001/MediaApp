import 'package:flutter/material.dart';

class MyStory extends StatelessWidget {
  MyStory({super.key});

  final List<String> _profilePhoto = [
    'https://th.bing.com/th/id/OIP.VTBzGQySOYLDke_xg2OfEQHaFj?w=257&h=193&c=7&r=0&o=5&dpr=1.3&pid=1.7',
    'https://wallpapers.com/images/hd/cool-profile-picture-87h46gcobjl5e4xu.jpg',
    'https://wallpapercave.com/wp/wp5836348.jpg',
    'https://www.profilebakery.com/wp-content/uploads/2023/04/AI-Profile-Picture.jpg',
    'https://th.bing.com/th/id/OIP._PkZRkRRkj91n3nD8EA4sQAAAA?rs=1&pid=ImgDetMain',
    'https://th.bing.com/th/id/OIP.x7BxPfPVRYSFkqD9ZatItQHaHa?rs=1&pid=ImgDetMain'
  ];

  final List<String> _profileName = [
    'Akash',
    'Jay',
    'Vinay',
    'Tricia',
    'Antonio',
    'Pathan'
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150, // Set a fixed height
      child: ListView.builder(
        scrollDirection: Axis.horizontal, // Horizontal scrolling
        itemCount: _profilePhoto.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 10, right: 1),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(_profilePhoto[index]),
                ),
                SizedBox(
                  height: 5,
                ),
                Center(
                    child: Text(
                  _profileName[index],
                  style: TextStyle(fontSize: 10),
                ))
              ],
            ),
          );
        },
      ),
    );
  }
}
