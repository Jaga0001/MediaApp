import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:social_media_app/components/my_alert_dialog.dart';

class MyGridView extends StatefulWidget {
  const MyGridView({super.key});

  @override
  State<MyGridView> createState() => _MyGridViewState();
}

class _MyGridViewState extends State<MyGridView> {
  List stories = [];
  bool isLoading = true;
  bool hasError = false;

  @override
  void initState() {
    super.initState();
    fetchStories(); // Fetch stories when the widget is initialized
  }

  Future<void> fetchStories() async {
    final String apiUrl =
        "https://jagavantha.pythonanywhere.com/stories"; // Replace with actual API URL
    try {
      final response = await http.get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        setState(() {
          stories = json.decode(
              response.body)[0]; // Access the nested list inside the main array
          isLoading = false;
        });
      } else {
        setState(() {
          hasError = true;
          isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        hasError = true;
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Center(child: CircularProgressIndicator()); // Show loading spinner
    }

    if (hasError) {
      return Center(child: Text('Error loading stories')); // Show error message
    }

    if (stories.isEmpty) {
      return Center(
          child:
              Text('No stories available')); // Show if no stories are available
    }

    return GridView.builder(
        itemCount: stories.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 columns
          childAspectRatio: 3 / 4, // Aspect ratio for grid items
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                MyAlertDialog(
                  thumbnail: stories[index]['thumbnail'],
                  title: stories[index]['title'],
                  description: stories[index]['description'],
                ).show(context); // Call the show method
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Image.network(
                        stories[index]['thumbnail'],
                        width: double.infinity,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: Colors.grey,
                            child: Center(child: Icon(Icons.broken_image)),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 50,
                            width: 80,
                            child: Text(
                              stories[index]['title'],
                            ),
                          ),
                          Container(
                            child: Image.asset('assets/option.png'),
                            height: 20,
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
