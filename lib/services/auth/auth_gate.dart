
import 'package:chat_app_firebase/pages/home.dart';
import 'package:chat_app_firebase/services/auth/login_or_regstire.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';


class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return HomeScreen();
          } else {
            return const LoginOrRegistre();
          }
        },
      ),
    );
  }
}