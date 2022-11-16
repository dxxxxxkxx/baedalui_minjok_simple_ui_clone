import 'package:flutter/material.dart';

import '../components/banners.dart';
import '../components/categories.dart';
import '../components/constants.dart';
import '../components/my_app_bar.dart';
import '../components/my_storages.dart';
import '../components/tags.dart';

class MainScreen extends StatelessWidget {
  final List<Widget> _body = [
    Tags(),
    Categories(),
    const Banners(),
    MyStorages()
  ];

  MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MyAppBar(),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 16.0,
                ),
                child: Column(
                  children: [
                    _body[0],
                    const SizedBox(height: 12.0),
                    _body[1],
                    const SizedBox(height: 12.0),
                    _body[2],
                    const SizedBox(height: 12.0),
                    _body[3]
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
