import 'package:flutter/material.dart';

import '../components/app_bar.dart' as app_bar;

const Color greenColor = Color.fromARGB(255, 42, 193, 188);
const Color greyColor = Color.fromARGB(255, 245, 245, 245);

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [app_bar.AppBar()],
          ),
        ),
      ),
    );
  }
}
