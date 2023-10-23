import 'package:flutter/material.dart';
import 'package:tapnget/constants/dimentions.dart';

class DropDownMenu extends StatefulWidget {
  final List<String> list;

  const DropDownMenu({
    Key? key,
    required this.list,
  }) : super(key: key);

  @override
  State<DropDownMenu> createState() => _DropDownMenuState();
}

class _DropDownMenuState extends State<DropDownMenu> {
  String dropdownValue = '';
  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      width: Dimentions.containerWidth(context, 138),
      initialSelection: widget.list.first,
      onSelected: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      dropdownMenuEntries:
          widget.list.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
    );
  }
}
