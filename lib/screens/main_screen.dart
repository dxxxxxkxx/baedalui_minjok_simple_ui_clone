import 'package:flutter/material.dart';

import '../components/Categories.dart';
import '../components/app_bar.dart' as app_bar;
import '../components/banners.dart';
import '../components/my_storages.dart';
import '../components/tags.dart';

const Color greenColor = Color(0xFF2AC1BC);
const Color greyColor = Color(0xFFF5F5F5);

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const app_bar.AppBar(),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 14.0,
                  horizontal: 16.0,
                ),
                child: Column(
                  children: [
                    Tags(),
                    const SizedBox(height: 12.0),
                    const Categories(),
                    const SizedBox(height: 12.0),
                    const Banners(),
                    const SizedBox(height: 12.0),
                    MyStorages()
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
