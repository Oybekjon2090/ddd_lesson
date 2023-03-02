import 'package:ddd_lesson/aplication/home_bloc/home_cubit.dart';
import 'package:ddd_lesson/aplication/home_bloc/home_state.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Catigory extends StatefulWidget {
  const Catigory({super.key});

  @override
  State<Catigory> createState() => _CatigoryState();
}

class _CatigoryState extends State<Catigory> {
  final List<String> items = [
    'Xovli',
    'Dom',
    'Ofis',
    'Korxona',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, MainState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 149,
            height: 32,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                  color: Color.fromARGB(255, 221, 206, 206),
                )),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButtonHideUnderline(
                child: DropdownButton2(
                  hint: items.isEmpty
                      ? SizedBox.shrink()
                      : Text(
                          'Kvartira',
                          style: TextStyle(
                            fontSize: 14,
                            color: Theme.of(context).hintColor,
                          ),
                        ),
                  items: items
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ))
                      .toList(),
                  value: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value;
                    });
                  },
                  buttonHeight: 40,
                  buttonWidth: 140,
                  itemHeight: 40,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
