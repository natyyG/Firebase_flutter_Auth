import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class SucessWidget extends StatelessWidget {
  const SucessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
        body: Column(
      children: [
        Container(child: Text("signed in as \n ${user.email}")),
        ElevatedButton(
            onPressed: () => FirebaseAuth.instance.signOut(),
            child: Text("Logout"))
      ],
    ));
  }
}
