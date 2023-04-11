import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

class LoginWidget extends StatelessWidget {
  LoginWidget({super.key});
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(hintText: "Enter your email"),
            ),
            TextField(
              controller: passwordController,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(hintText: "Enter your password"),
            ),
            SizedBox(height: 30),
            ElevatedButton(onPressed: signIn, child: Text("Sign in"))
          ],
        ),
      ),
    );
  }

  Future signIn() async {
    // showDialog(context: context,
    //     barrierDismissible: false,
    //     builder: (context) => Center(child: CircularProgressIndicator()));
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }
}
