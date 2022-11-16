import 'package:flutter/material.dart';

import '../repositories/repository.dart';
import 'constants.dart';
import 'shadow_container.dart';

class SearchBar extends StatelessWidget {
  final IconData _searchIconData = Icons.search;
  final String _hintText = Repository().hintText;

  SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShadowContainer(
      child: TextFormField(
        onSaved: (newValue) {},
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: InputBorder.none,
          prefixIcon: Icon(_searchIconData, color: pointColor),
          hintText: _hintText,
          hintStyle: const TextStyle(fontFamily: bodyFont),
          hintMaxLines: 1,
        ),
      ),
    );
  }
}
