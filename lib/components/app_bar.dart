import 'package:flutter/material.dart';

import '../screens/main_screen.dart';
import 'addresses_dropdown.dart';

class AppBar extends StatelessWidget {
  const AppBar({Key? key}) : super(key: key);

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
        color: greenColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const AddressesDropdown(),
              _setIconButton(icon: const Icon(Icons.grid_view)),
              _setIconButton(icon: const Icon(Icons.notifications_none)),
              _setIconButton(icon: const Icon(Icons.tag_faces))
            ],
          ),
          TextFormField(
            onSaved: (newValue) {},
            textAlignVertical: TextAlignVertical.center,
            decoration: const InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search, color: greenColor),
              hintText: '닭발? 순대? 곱창?',
              hintStyle: TextStyle(fontFamily: 'NanumGothic'),
              hintMaxLines: 1,
            ),
          )
        ],
      ),
    );
  }
}
