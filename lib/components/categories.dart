import 'package:flutter/material.dart';

import 'shadow_container.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  List<Widget> _setText({required String title, required String body}) {
    return [
      Text(
        title,
        style: const TextStyle(
          fontFamily: 'DoHyeon',
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 6.0),
      Text(
        body,
        style: const TextStyle(fontFamily: 'NanumGothic'),
      )
    ];
  }

  Widget _setTopItem({
    required Positioned positioned,
    required String title,
    required String body,
  }) {
    return Expanded(
      child: AspectRatio(
        aspectRatio: 8 / 9,
        child: GestureDetector(
          onTap: () {},
          child: ShadowContainer(
            child: Stack(
              children: [
                positioned,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 14.0),
                    ..._setText(title: title, body: body)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _setBottomItem({required String icon, required String label}) {
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
                  style: const TextStyle(fontFamily: 'DoHyeon', fontSize: 16.0),
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
        _setTopItem(
          positioned: Positioned.fill(
            child: Image.asset(
              'assets/images/foods.jpg',
              fit: BoxFit.fill,
              color: Colors.white.withOpacity(0.5),
              colorBlendMode: BlendMode.modulate,
            ),
          ),
          title: '배달',
          body: '세상은 넓고\n맛집은 많다',
        ),
        const SizedBox(width: 12.0),
        _setTopItem(
          positioned: Positioned.fill(
            top: 64.0,
            child: Image.asset('assets/images/rider.gif', fit: BoxFit.fitWidth),
          ),
          title: '배민1',
          body: '한 번에 한 집만\n빠르게 배달해요!',
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
              Align(
                alignment: Alignment.bottomRight,
                child: FractionallySizedBox(
                  widthFactor: 0.2,
                  child: Image.asset('assets/images/take_out.png'),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ..._setText(title: '포장', body: '가까운 가게는 직접 가지러 가지요')
                ],
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
        _setBottomItem(icon: '🏬', label: '쇼핑라이브'),
        const SizedBox(width: 12.0),
        _setBottomItem(icon: '🎁', label: '선물하기'),
        const SizedBox(width: 12.0),
        _setBottomItem(icon: '🍧', label: '전국별미')
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
