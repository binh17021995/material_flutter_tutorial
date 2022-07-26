import 'package:flutter/material.dart';

InputDecoration inputDecoration(IconData icons, String emailOrPass) {
  return InputDecoration(
      prefixIcon: Icon(icons),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
      labelText: emailOrPass,
      contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      labelStyle: const TextStyle(fontSize: 15, color: Colors.black));
}
