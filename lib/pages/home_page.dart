import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final User user = FirebaseAuth.instance.currentUser!;

  void signOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [IconButton(onPressed: signOut, icon: Icon(Icons.logout))],
      ),
      body: Center(
        child: Column(
          children: [
            Text('Welcome, ${user.email}'),
            TextButton(onPressed: signOut, child: Text('Sign Out')),
          ],
        ),
      ),
    );
  }
}
