import 'package:flutter/material.dart';

class PetOwnerCommunityScreen extends StatefulWidget {
  @override
  _PetOwnerCommunityScreenState createState() => _PetOwnerCommunityScreenState();
}

class _PetOwnerCommunityScreenState extends State<PetOwnerCommunityScreen> {
  // Sample data for forum threads. Replace this with your actual data source.
  final List<Map<String, String>> forumThreads = [
    {'title': 'Best Pet Training Techniques', 'author': 'JaneDoe123'},
    {'title': 'Dealing with Pet Allergies', 'author': 'JohnSmith456'},
    {'title': 'Pet Adoption Stories', 'author': 'EmilyRoe789'},
    // Add more threads here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pet Owner Community'),
      ),
      body: ListView.builder(
        itemCount: forumThreads.length,
        itemBuilder: (context, index) {
          final thread = forumThreads[index];
          return ListTile(
            title: Text(thread['title']!),
            subtitle: Text('Started by ${thread['author']}'),
            onTap: () {
              // Handle navigation to the thread conversation screen
              // Navigator.push(...);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle creating a new forum thread
          // Navigate to the screen where users can create a new post
        },
        child: Icon(Icons.add),
        tooltip: 'Start a new conversation',
      ),
    );
  }
}
