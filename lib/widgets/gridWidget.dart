import 'package:flutter/material.dart';

Widget gridWidget() {
  return Container(
    padding: EdgeInsets.all(4.0),
    child: const Column(
      children: [
        Icon(Icons.build),
        SizedBox(height: 10),
        Text('Developer'),
        SizedBox(height: 10),
        Text('(450 jobs)')
      ],
    ),
  );
}
