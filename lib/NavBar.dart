import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('User Name'), // Provide user name
            accountEmail: Text('user@example.com'), // Provide user email
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Icon(
                  Icons.person,
                  size: 50.0, // Adjust size as needed
                  color: Colors.white, // Ensure icon color contrasts with background
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: ()=> null,
            
          ),
          ListTile(
            leading: Icon(Icons.category),
            title:  Text('Category'),
            onTap: ()=> null,

          ),
          ListTile(
            leading: Icon(Icons.settings),
            title:  Text('Settings'),
            onTap: ()=> null,
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title:  Text('Exit'),
            onTap: ()=> null,
          ),

        ]

      ),
    );
  }
}


