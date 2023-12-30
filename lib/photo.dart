// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class photo extends StatelessWidget {
  final Image image;
  final Color color;
  final String datatex;
  const photo(
      {super.key,
      required this.image,
      required this.color,
      required this.datatex});

  @override
  Widget build(BuildContext context) {
    return  Row(
              children: [
                Column(
                  children: [
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                            height: 40,
                            width: 70,
                            decoration: BoxDecoration(color: color, boxShadow: [
                              BoxShadow(
                                color: const Color.fromARGB(255, 231, 228, 228),
                                spreadRadius: 10,
                                blurRadius: 10,
                              )
                            ]),
                            child: image),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          datatex,
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        ),
                        Text(
                          datatex,
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    )
                  ],
                )
              ],
            );
  }
}
