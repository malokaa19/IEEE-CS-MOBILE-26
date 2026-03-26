import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';

BottomBarItem bottomAppBar({required IconData icon, required String text}) =>
    BottomBarItem(
      inActiveItem: Icon(icon, color: Colors.white),
      activeItem: Icon(icon, color: const Color.fromARGB(255, 35, 14, 70)),
      itemLabelWidget: Text(text, style: TextStyle(color: Colors.white)),
    );
Widget defualtformfield({
  required TextEditingController? controller,
  required String text,
  required IconData icon,
  required GestureTapCallback ontap,
}) => TextFormField(
  controller: controller,
  validator: (value) {
    if (value!.isEmpty) {
      return "please enter tour task name";
    } else {
      return null;
    }
  },
  decoration: InputDecoration(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
    labelText: text,
    prefixIcon: Icon(icon, color: Colors.black),
  ),
  onTap: ontap,
);
