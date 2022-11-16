import 'package:flutter/material.dart';

import '../repositories/repository.dart';
import 'constants.dart';
import 'shadow_container.dart';

class Tags extends StatelessWidget {
  final List<String> _tags = Repository().tags;

  Tags({Key? key}) : super(key: key);

  Widget _setTag({required String tag}) {
    return GestureDetector(
      onTap: () {},
      child: ShadowContainer(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: Row(
          children: [
            const Text(
              '#',
              style: TextStyle(
                color: pointColor,
                fontFamily: bodyFont,
                fontSize: 18.0,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 6.0),
            Text(
              tag,
              style: const TextStyle(fontFamily: bodyFont, height: 1.0),
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
            const SizedBox(width: 8.0),
      ),
    );
  }
}
