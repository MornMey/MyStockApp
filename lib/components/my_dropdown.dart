import 'package:flutter/material.dart';

class MyDropDown extends StatelessWidget {
  final List<String> items;
  final double height;
  final Widget hintText;
  final Widget icon;
  final String value;
  final Function onChanged;

  MyDropDown({
    this.height,
    this.hintText,
    this.icon,
    this.items,
    this.value,
    this.onChanged,
  });
  
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      itemHeight: height,
      value: value,
      items: items
          .map(
            (label) => DropdownMenuItem(
              child: Text(
                label.toString(),
              ),
              value: label,
            ),
          )
          .toList(),
      hint: hintText,
      icon: icon,
      onChanged: onChanged,
      decoration: InputDecoration(
        fillColor: Color(0xFFE1E1E1),
        filled: true,
        isDense: true,
        hintStyle: TextStyle(color: Color(0xFF4B5B75)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
      ),
    );
  }
}
