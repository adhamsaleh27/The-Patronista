import 'package:flutter/material.dart';

class FieldForSize extends StatelessWidget {
  final String label;

  const FieldForSize({
    Key? key,
    required this.size,
    required this.label,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width / 2.4,
      height: 40,
      child: TextFormField(
        cursorColor:  Colors.white,
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          labelText: label,
          focusColor: Colors.white,
          labelStyle: const TextStyle(
              color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: const BorderSide(
                color: Colors.white,
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: const BorderSide(
                color: Colors.white,
              )),
        ),
      ),
    );
  }
}
