import 'package:flutter/material.dart';

Widget currentweather(IconData icon, String temp, String location) {
  return Center(
      child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        icon,
        color: Colors.orange,
        size: 100,
      ),
      const SizedBox(
        height: 10,
      ),
      Text(
        '$temp',
        style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w300),
      ),
      const SizedBox(
        height: 10,
      ),
      Text(
        '$location',
        style: const TextStyle(fontSize: 23, fontWeight: FontWeight.w300),
      )
    ],
  ));
}
