import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'pages/home/home.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _currentIndex = 0;

  final List<Widget> _screan = [
    const HomePage(),
    const Center(
        child:
            Text("Cart", style: TextStyle(fontSize: 50, color: Colors.white))),
    const Center(
        child: Text("Profile",
            style: TextStyle(fontSize: 50, color: Colors.white)))
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: _screan[_currentIndex],
      bottomNavigationBar: Container(
        height: 80,
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(color: Theme.of(context).primaryColor),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          _buildNavIrem(CupertinoIcons.location, 0),
          _buildNavIrem(CupertinoIcons.cart, 1, isCenter: true),
          _buildNavIrem(CupertinoIcons.profile_circled, 2)
        ]),
      ),
    );
  }

  Widget _buildNavIrem(IconData icon, int index, {bool isCenter = false}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: _currentIndex == index
            ? BoxDecoration(
                color: const Color(0xFFDAC440),
                shape: BoxShape.circle,
                boxShadow: [
                    BoxShadow(
                        color: const Color(0xFFDAC440).withOpacity(0.4),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: const Offset(0, 3))
                  ])
            : null,
        child: Icon(icon, color: Colors.white, size: isCenter ? 26 : 24),
      ),
    );
  }
}
