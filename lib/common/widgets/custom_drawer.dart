import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      backgroundColor: Colors.white54,
      child: Column(
        children: [
          DrawerHeader(
            child: Icon(Icons.favorite),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
          ),
          ListTile(
            leading: Icon(Icons.miscellaneous_services),
            title: Text('Service'),
          ),
          ListTile(
            leading: Icon(Icons.book_outlined),
            title: Text('Project'),
          ),
          ListTile(
            leading: Icon(Icons.add_box_outlined),
            title: Text('About Us'),
          ),
          ListTile(
            leading: Icon(Icons.person_2_outlined),
            title: Text('Contact Us'),
          ),
        ],
      ),
    );
  }
}
