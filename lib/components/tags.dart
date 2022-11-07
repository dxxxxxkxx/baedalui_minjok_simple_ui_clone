import 'package:flutter/material.dart';

import '../screens/main_screen.dart';
import 'shadow_container.dart';

class Tags extends StatelessWidget {
  final List<String> _tags = [
    '맵단짠 찜닭',
    '쿠폰 받기🎟️',
    '집밥🏠',
    '초밥🍣',
    '찜 많은 가게',
    '족발🍖',
    '재주문 많아요',
    '얼얼한 마라탕',
    '샐러드🥗',
    '추천 더 보기👉'
  ];

  Tags({Key? key}) : super(key: key);

  Widget _setTag({required String tag}) {
    return GestureDetector(
      onTap: () {},
      child: ShadowContainer(
        child: Row(
          children: [
            const Text(
              '#',
              style: TextStyle(
                color: greenColor,
                fontFamily: 'NanumGothic',
                fontSize: 18.0,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 6.0),
            Text(
              tag,
              style: const TextStyle(fontFamily: 'NanumGothic', height: 1.0),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44.0,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(2.0),
        itemCount: _tags.length,
        itemBuilder: (context, index) => _setTag(tag: _tags[index]),
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(width: 12.0),
      ),
    );
  }
}
