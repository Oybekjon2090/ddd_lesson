import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomTextFrom extends StatelessWidget {
  final TextEditingController controller;
  final String hintext;
  final Widget? suffixicon;
  final TextInputType keyboardType;
  final ValueChanged<String>? onchange;
  final bool isObscure;
  final String? label;
  final int? maxlines;

  final ValueChanged<String>? onChange;

  const CustomTextFrom(
      {Key? key,
      required this.controller,
      required this.hintext,
      this.keyboardType = TextInputType.text,
      this.onchange,
      this.suffixicon,
      this.isObscure = false,
      this.label,
      this.onChange,
      this.maxlines})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        return '';
      },
      onChanged: onchange,
      controller: controller,
      keyboardType: keyboardType,
      maxLines: maxlines,
      decoration: InputDecoration(
        label: Text('$label'),
        hintText: hintext,
        contentPadding:
            const EdgeInsets.only(left: 24, right: 80, top: 12, bottom: 12),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 0.0),
        ),
        focusedErrorBorder: new OutlineInputBorder(
          borderSide: new BorderSide(color: Colors.blue, width: 0.0),
        ),
        border: const OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 221, 206, 206)),
            borderRadius: BorderRadius.all(Radius.circular(12))),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 221, 206, 206)),
            borderRadius: BorderRadius.all(Radius.circular(12))),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 221, 206, 206)),
            borderRadius: BorderRadius.all(Radius.circular(12))),
      ),
    );
  }
}
