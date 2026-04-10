import 'package:flutter/material.dart';

import '../widget/interest_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),

              // for Profile Image
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                      'https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?q=80&w=870&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    ),
                  ),

                  SizedBox(height: 10),

                  // Name
                  Text(
                    'John Doe',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),

                  // Title
                  Text(
                    'Flutter Developer',
                    style: TextStyle(color: Colors.grey),
                  ),

                  SizedBox(height: 10),

                  // For description
                  Text(
                    'Passionate about creating user - friendly and engaging digital experiences.',
                    textAlign: TextAlign.center,
                  ),

                  Divider(
                    height: 10,
                    thickness: 1,
                    indent: 25,
                    endIndent: 25,
                    color: Colors.black12,
                  ),

                  SizedBox(height: 10),

                  // Email & phone number
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.email, size: 20),
                            SizedBox(width: 10),
                            Text('john.doe@gmail.com'),
                          ],
                        ),

                        SizedBox(height: 9),

                        Row(
                          children: [
                            Icon(Icons.call, size: 20),
                            SizedBox(width: 10),
                            Text('+123 456 7890'),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 15),

                  // Follow button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 36,
                        width: 139,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue.shade700,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Follow',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),

                      SizedBox(width: 10),

                      // Message button
                      SizedBox(
                        height: 36,
                        width: 139,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white60,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            side: BorderSide(color: Colors.black26),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Message',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                ],
              ),
            ),

            // Interests
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Expanded(child: Divider(thickness: 2, color: Colors.black12)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      'Interests',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Expanded(child: Divider(thickness: 2, color: Colors.black12)),
                ],
              ),
            ),

            // InterestCard
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: InterestCard(
                      image:
                          ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWiUtpeOVpfsqmOWXDZlKJJAsF4Fo3q1cTFg&s'),
                      title: 'Travel',
                      subtitle: 'Exploring new places around the world',
                    ),
                  ),

                  SizedBox(width: 12),

                  Expanded(
                    child: InterestCard(
                      image:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpKCGZSsBW-bgq0gvd03Bjyez3-rwUfI4NBg&s',
                      title: 'Photography',
                      subtitle: 'Capturing moments through the lens',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
