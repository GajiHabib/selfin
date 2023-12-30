// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:selfin/photo.dart';

class chobi extends StatelessWidget {
  const chobi({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Card(
          child: Stack(
          children: [
                  Container(
              height: 100,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 185, 181, 181),
                    blurRadius: 10,
                    spreadRadius: 10
                  )
                ]
              ),
              
            ),
            Container(
              height: 100,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12)
              ),
              child: Row(
                children: [
                  photo(image: Image.asset('assets/a.webp'), color:Colors.white, datatex: 'taka'),
                    photo(image: Image.asset('assets/b.jpeg'), color:Colors.white, datatex: 'taka'),
                      photo(image: Image.asset('assets/c.jpeg'), color:Colors.white, datatex: 'taka'),
                        photo(image: Image.asset('assets/d.png'), color:Colors.white, datatex: 'taka'),
                ],
              ),
            )
          ],
          ),
        ),

      ],
    );
  }
}