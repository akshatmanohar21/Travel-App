import 'package:flutter/material.dart';

class CommunityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Community'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Post List
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Individual Post 1
                  _buildPost(
                    username: 'User123',
                    postText:
                    'Just came back from an amazing trip to Bali!  #TravelGoals',
                  ),
                  SizedBox(height: 16),
                  // Individual Post 2
                  _buildPost(
                    username: 'AdventureExplorer',
                    postText:
                    'Hiking in the Himalayas was an incredible experience. Highly recommended! ⛰️',
                  ),
                  SizedBox(height: 16),
                  // Individual Post 3
                  _buildPost(
                    username: 'TravelBug',
                    postText:
                    'Exploring the streets of Tokyo, Japan. Such a vibrant and lively city! 🇯🇵',
                  ),
                  SizedBox(height: 16),
                  // Individual Post 4
                  _buildPost(
                    username: 'NatureLover',
                    postText:
                    'Spent the weekend camping in the wilderness. Nature is so beautiful and peaceful! 🏕️',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // Add a button to create new posts
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Implement logic to create a new post
        },
        child: Icon(Icons.add),
      ),
    );
  }

  // Widget to display an individual post
  Widget _buildPost({
    required String username,
    required String postText,
  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/user_avatar.jpg'),
            ),
            title: Text(username),
            // Add timestamp here
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Text(postText),
          ),
          // Add like and comment buttons here
          // Add comments section here
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: CommunityPage(),
  ));
}
