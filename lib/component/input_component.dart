import 'package:flutter/material.dart';
import 'package:suzuki/util/system.dart';

class InputComponent {
  static inputText({
    String? hint,
  }) {
    return TextField(
      controller: TextEditingController(),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          color: System.data.color!.unselected,
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
      ),
    );
  }
}
