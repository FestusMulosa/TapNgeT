import 'package:flutter/material.dart';
import 'package:tapnget/constants/colors.dart';

import '../../../constants/dimentions.dart';

/// Flutter code sample for [DropdownMenu].

class DropdownMenuButton extends StatefulWidget {
  DropdownMenuButton({super.key, required this.list});
  List<String> list;

  @override
  State<DropdownMenuButton> createState() => _DropdownMenuButtonState();
}

class _DropdownMenuButtonState extends State<DropdownMenuButton> {
  String dropdownValue = '';

  @override
  void initState() {
    super.initState();
    dropdownValue = widget.list.first;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Dimentions.paddingSize(context, 2)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black),
      ),
      width: Dimentions.containerWidth(context, 100),
      child: DropdownButton<String>(
        isDense: true,
        isExpanded: true,
        value: dropdownValue,
        icon: const Icon(Icons.arrow_drop_down),
        elevation: 16,
        style: const TextStyle(color: AppColors.buttonColor),
        onChanged: (String? value) {
          // This is called when the user selects an item.
          setState(() {
            dropdownValue = value!;
          });
        },
        items: widget.list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
