import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multiselect_dropdown_flutter/multiselect_dropdown_flutter.dart';

class DropdownXovli extends StatelessWidget {
  const DropdownXovli({super.key});

  final List myList2 = const [
    '1 xona',
    '2 xona',
    '3 xona',
    '4 xona',
    '5 xona',
    '6 xona',
    '7 xona',
    '8 xona',
    '9 xona',
    '10 xona'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 149,
      height: 32,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            color: Color.fromARGB(255, 221, 206, 206),
          )),
      child: MultiSelectDropdown.simpleList(
        width: 120,
        list: myList2,
        initiallySelected: const [],
        onChange: (newList) {
          // your logic
        },
        includeSearch: true,
        includeSelectAll: true,
      ),
    );
  }
}
