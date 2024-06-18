import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Services'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          ServiceCard(title: 'Service Desk', icon: Icons.support_agent),
          ServiceCard(title: 'Student Record System', icon: Icons.assignment),
          ServiceCard(title: 'Postgraduate System', icon: Icons.school),
          ServiceCard(title: 'Scientific Library', icon: Icons.library_books),
          ServiceCard(title: 'Academic Services', icon: Icons.menu_book),
          ServiceCard(title: 'Student Hub', icon: Icons.hub),
          ServiceCard(title: 'Electronic Learning', icon: Icons.computer),
          ServiceCard(title: 'Mail', icon: Icons.mail),
          ServiceCard(title: 'Student Hub', icon: Icons.chat),
        ],
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String title;
  final IconData icon;

  ServiceCard({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          // Define the action for each card here
        },
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(icon, size: 50.0),
              SizedBox(height: 20.0),
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
