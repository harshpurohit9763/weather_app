import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

TextStyle adinf = const TextStyle(
    fontSize: 22, fontWeight: FontWeight.w400, color: Colors.blueGrey);
TextStyle subtxt = const TextStyle(
    fontSize: 20, fontWeight: FontWeight.w300, color: Colors.grey);
Widget AdditionalInformation(
    String wind, String pressure, String humidity, String feels) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(18),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('wind', style: adinf),
                const SizedBox(
                  height: 10,
                ),
                Text('pressure', style: adinf),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('$wind', style: subtxt),
                const SizedBox(
                  height: 10,
                ),
                Text('$pressure', style: subtxt),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('humidity', style: adinf),
                const SizedBox(
                  height: 10,
                ),
                Text('feels', style: adinf),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('$humidity', style: subtxt),
                const SizedBox(
                  height: 10,
                ),
                Text('$feels', style: subtxt),
              ],
            )
          ],
        )
      ],
    ),
  );
}
