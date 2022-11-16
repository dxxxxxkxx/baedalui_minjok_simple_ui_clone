import 'package:flutter/material.dart';

import 'constants.dart';
import 'shadow_container.dart';

class Categories extends StatelessWidget {
  final Map<String, String> _contents = {
    '배달': '세상은 넓고\n맛집은 많다',
    '배민1': '한 번에 한 집만\n빠르게 배달해요!',
    '포장': '가까운 가게는 직접 가지러 가지요',
    '쇼핑라이브': '🏬',
    '선물하기': '🎁',
    '전국별미': '🍧'
  };

  final List<String> _imageSrcs = [
    'assets/images/foods.jpg',
    'assets/images/burger.gif',
    'assets/images/rider.gif',
    'assets/images/egg_bacon.gif'
  ];

  Categories({Key? key}) : super(key: key);

  List<Widget> _setText({required String title, required String body}) {
    return [
      Text(
        title,
        style: const TextStyle(
          fontFamily: titleFont,
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 6.0),
      Text(
        body,
        style: const TextStyle(fontFamily: bodyFont),
      )
    ];
  }

  Widget _setTopContents({
    required String title,
    required String body,
    Align? align,
    DecorationImage? decorationImage,
  }) {
    return Expanded(
      child: AspectRatio(
        aspectRatio: 8 / 9,
        child: GestureDetector(
          onTap: () {},
          child: ShadowContainer(
            decorationImage: decorationImage,
            child: Stack(
              children: [
                if (align != null) align,
                Padding(
                  padding: const EdgeInsets.only(top: 14.0, left: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: _setText(title: title, body: body),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _setBottomContents({required String icon, required String label}) {
    return Expanded(
      child: AspectRatio(
        aspectRatio: 5 / 4,
        child: GestureDetector(
          onTap: () {},
          child: ShadowContainer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(icon, style: const TextStyle(fontSize: 24.0)),
                const SizedBox(height: 8.0),
                Text(
                  label,
                  style: const TextStyle(fontFamily: titleFont, fontSize: 16.0),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTop() {
    return Row(
      children: [
        _setTopContents(
          align: Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(_imageSrcs[1], width: 110.0),
          ),
          title: _contents.keys.elementAt(0),
          body: _contents.values.elementAt(0),
          decorationImage: DecorationImage(
            image: AssetImage(_imageSrcs[0]),
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.5),
              BlendMode.modulate,
            ),
          ),
        ),
        const SizedBox(width: 12.0),
        _setTopContents(
          align: Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(_imageSrcs[2], height: 110.0),
          ),
          title: _contents.keys.elementAt(1),
          body: _contents.values.elementAt(1),
        )
      ],
    );
  }

  Widget _buildMiddle() {
    return AspectRatio(
      aspectRatio: 25 / 6,
      child: GestureDetector(
        onTap: () {},
        child: ShadowContainer(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: FractionallySizedBox(
                    widthFactor: 0.2,
                    child: Image.asset(_imageSrcs[3]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: _setText(
                    title: _contents.keys.elementAt(2),
                    body: _contents.values.elementAt(2),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBottom() {
    return Row(
      children: [
        _setBottomContents(
          icon: _contents.values.elementAt(3),
          label: _contents.keys.elementAt(3),
        ),
        const SizedBox(width: 12.0),
        _setBottomContents(
          icon: _contents.values.elementAt(4),
          label: _contents.keys.elementAt(4),
        ),
        const SizedBox(width: 12.0),
        _setBottomContents(
          icon: _contents.values.elementAt(5),
          label: _contents.keys.elementAt(5),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTop(),
        const SizedBox(height: 14.0),
        _buildMiddle(),
        const SizedBox(height: 14.0),
        _buildBottom()
      ],
    );
  }
}
