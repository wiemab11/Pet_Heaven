import 'package:flutter/material.dart';
import '../NavBar.dart';
import 'ProfileScreen.dart';

// Placeholder widgets for the other screens
class AddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Add Screen'));
  }
}

class MessagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Messages Screen'));
  }
}

class ProfileeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child:ProfileScreen());
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  // List of widgets to display for each tab
  final List<Widget> _pages = <Widget>[
    HomeScreen(),
    AddScreen(),
    MessagesScreen(),
    ProfileeScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Color(0xFF478DE0),
        elevation: 0,
        title: const Text('Pet_heaven'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_active),
            onPressed: () {
              // Action when the notification icon is pressed
            },
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus(); // Dismiss the keyboard
        },
        child: _pages[_selectedIndex], // Display the selected screen
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color(0xFF0288D1),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_sharp),
            label: 'Add',
            backgroundColor: Color(0xFF0288D1),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_outlined),
            label: 'Messages',
            backgroundColor: Color(0xFF0288D1),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Color(0xFF0288D1),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFFBBDEFB),
        onTap: _onItemTapped,
      ),
    );
  }
}

// Placeholder for the Home screen content
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(8.0),
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: TextField(
            style: TextStyle(
              fontSize: 15.0,
            ),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 15.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide(width: 0.8),
              ),
              hintText: 'Search',
              prefixIcon: Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Icon(
                  Icons.search,
                  size: 30.0,
                ),
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  // Clear text field action
                },
                icon: Icon(Icons.clear),
              ),
            ),
          ),
        ),
        // Add other widgets here if needed
      ],
    );
  }
}
