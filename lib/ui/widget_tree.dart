

import 'package:auth_firebase/ui/auth.dart';
import 'package:auth_firebase/ui/home_page.dart';
import 'package:auth_firebase/ui/login_register_page.dart';
import 'package:flutter/material.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({Key? key}) : super(key: key);

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      builder: (context, snap) {
        if (snap.hasData) {
          return HomePage();
        } else {
          return const LoginPage();
        }
      },
      stream: Auth().authStateChanges,
    );
  }
}
