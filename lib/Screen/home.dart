import 'package:chat/Screen/Actus.dart';
import 'package:chat/Screen/appels.dart';
import 'package:chat/Screen/communautes.dart';
import 'package:chat/Screen/discussions.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List homePages = [ChatPage(), StoryPage(), CommunityPage(), CallPage()];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: homePages[currentIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        onDestinationSelected: (int value) {
          setState(() {
            currentIndex = value;
          });
        },
        destinations: [
          NavigationDestination(icon: Icon(Icons.chat), label: "Discussions"),
          NavigationDestination(
            icon: Icon(Icons.filter_tilt_shift),
            label: "Actus",
          ),
          NavigationDestination(icon: Icon(Icons.groups), label: "Communauté"),
          NavigationDestination(icon: Icon(Icons.phone), label: "Appels"),
        ],
      ),
    );
  }
}
