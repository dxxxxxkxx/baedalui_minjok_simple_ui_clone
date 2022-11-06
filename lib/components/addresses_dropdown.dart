import 'package:flutter/material.dart';

class AddressesDropdown extends StatefulWidget {
  const AddressesDropdown({Key? key}) : super(key: key);

  @override
  State<AddressesDropdown> createState() => _AddressesDropdownState();
}

class _AddressesDropdownState extends State<AddressesDropdown> {
  final List<String> _addresses = ['우리집', '서올 송파구 위례성대로 2 장은빌딩 2층'];
  String dropdownValue = '';

  _AddressesDropdownState() {
    dropdownValue = _addresses.first;
  }

  Widget _setSelectedItem({required String item}) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text(
        item,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(color: Colors.white, fontSize: 18.0),
      ),
    );
  }

  DropdownMenuItem<String> _setItem({required String address}) {
    return DropdownMenuItem<String>(
      value: address,
      child: Text(address),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          onChanged: (String? address) {
            setState(() {
              dropdownValue = address!;
            });
          },
          isExpanded: true,
          iconEnabledColor: Colors.white,
          iconDisabledColor: Colors.white,
          style: const TextStyle(color: Colors.black),
          value: dropdownValue,
          selectedItemBuilder: (context) => _addresses
              .map<Widget>(
                (String item) => _setSelectedItem(item: item),
              )
              .toList(),
          items: _addresses
              .map<DropdownMenuItem<String>>(
                (String address) => _setItem(address: address),
              )
              .toList(),
        ),
      ),
    );
  }
}
