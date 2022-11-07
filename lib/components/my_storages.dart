import 'package:flutter/material.dart';

import 'shadow_container.dart';

class MyStorages extends StatelessWidget {
  final VerticalDivider verticalDivider = VerticalDivider(
    color: Colors.grey[350],
    thickness: 0.8,
  );

  MyStorages({Key? key}) : super(key: key);

  Widget _setStorage({required Icon icon, required String label}) {
    return Expanded(
      child: IconButton(
        onPressed: () {},
        icon: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            icon,
            Text(label, style: const TextStyle(fontFamily: 'NanumGothic'))
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 4 / 1,
      child: ShadowContainer(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _setStorage(icon: const Icon(Icons.local_parking), label: '포인트'),
            verticalDivider,
            _setStorage(
              icon: const Icon(Icons.local_activity_outlined),
              label: '쿠폰함',
            ),
            verticalDivider,
            _setStorage(icon: const Icon(Icons.card_giftcard), label: '선물함'),
            verticalDivider,
            _setStorage(icon: const Icon(Icons.favorite_border), label: '찜')
          ],
        ),
      ),
    );
  }
}
