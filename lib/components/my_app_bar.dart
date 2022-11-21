import 'package:flutter/material.dart';

import 'addresses_dropdown.dart';
import 'constants.dart';
import 'search_bar.dart';

class MyAppBar extends StatelessWidget {
  final List<Icon> _icons = const [
    Icon(Icons.grid_view),
    Icon(Icons.notifications_none),
    Icon(Icons.tag_faces)
  ];

  const MyAppBar({Key? key}) : super(key: key);

  Widget _setIconButton({required Icon icon}) {
    return IconButton(
      onPressed: () {},
      padding: const EdgeInsets.only(left: 12.0),
      constraints: const BoxConstraints.tightFor(),
      color: Colors.white,
      iconSize: 28.0,
      icon: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16.0, 2.0, 16.0, 20.0),
      height: 128.0,
      decoration: const BoxDecoration(
        color: pointColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(circular15_0),
          bottomRight: Radius.circular(circular15_0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const AddressesDropdown(),
              _setIconButton(icon: _icons[0]),
              _setIconButton(icon: _icons[1]),
              _setIconButton(icon: _icons[2])
            ],
          ),
          SearchBar()
        ],
      ),
    );
  }
}
