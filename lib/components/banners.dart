import 'dart:async';

import 'package:flutter/material.dart';

import '../repositories/repository.dart';
import 'constants.dart';

class Banners extends StatefulWidget {
  const Banners({Key? key}) : super(key: key);

  @override
  State<Banners> createState() => _BannersState();
}

class _BannersState extends State<Banners> {
  final List<String> _banners = Repository().banners;

  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();

    Timer.periodic(
      const Duration(seconds: 5),
      (Timer timer) {
        if (_currentPage < _banners.length - 1) {
          _currentPage++;
        } else {
          _currentPage = 0;
        }

        _pageController.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 350),
          curve: Curves.easeIn,
        );
      },
    );
  }

  Widget _setBannerChip({required int index}) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
      decoration: BoxDecoration(
        color: Colors.black45,
        borderRadius: BorderRadius.circular(circular20_0),
      ),
      child: Text(
        '${index + 1} / ${_banners.length} 모두보기',
        style: const TextStyle(
          color: Colors.white,
          fontFamily: bodyFont,
          fontSize: 10.0,
        ),
      ),
    );
  }

  Widget _setPageViewItem({required int index}) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Positioned.fill(
          child: Image.network(_banners[index], fit: BoxFit.fill),
        ),
        Positioned(
          bottom: 8.0,
          right: 8.0,
          child: _setBannerChip(index: index),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 20 / 7,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: PageView.builder(
          onPageChanged: (value) {},
          pageSnapping: true,
          controller: _pageController,
          itemCount: _banners.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {},
            child: _setPageViewItem(index: index),
          ),
        ),
      ),
    );
  }
}
