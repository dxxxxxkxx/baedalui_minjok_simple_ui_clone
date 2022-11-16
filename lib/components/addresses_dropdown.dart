import 'package:flutter/material.dart';

import '../repositories/repository.dart';
import 'constants.dart';

class AddressesDropdown extends StatefulWidget {
  const AddressesDropdown({Key? key}) : super(key: key);

  @override
  State<AddressesDropdown> createState() => _AddressesDropdownState();
}

class _AddressesDropdownState extends State<AddressesDropdown> {
  final List<String> _addresses = Repository().addresses;

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
        style: const TextStyle(
          color: Colors.white,
          fontFamily: bodyFont,
          fontSize: 18.0,
        ),
      ),
    );
  }

  DropdownMenuItem<String> _setItem({required String address}) {
    return DropdownMenuItem<String>(
      value: address,
      child: Text(address, style: const TextStyle(fontFamily: bodyFont)),
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
          style: const TextStyle(
            color: Colors.black,
            fontFamily: bodyFont,
          ),
          value: dropdownValue,
          selectedItemBuilder: (context) => _addresses
              .map<Widget>((String item) => _setSelectedItem(item: item))
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
