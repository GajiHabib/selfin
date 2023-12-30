// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:selfin/chobi.dart';

import 'package:selfin/photo.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 4, 92, 51),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.white,),label: ''),
         BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.white,),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.settings,color: Colors.white,),label: ''),
           BottomNavigationBarItem(icon: Icon(Icons.settings,color: Colors.white,),label: ''),
      ],
     backgroundColor: Color.fromARGB(255, 2, 54, 30),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
      child: Icon(Icons.accessible_forward_sharp),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(child: Column(
        children: [
          Row(children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                margin: EdgeInsets.all(10),
                height:80,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Image.asset('assets/sel.png'),
              ),
            ),
            SizedBox(width: 30,),
            Icon(Icons.rice_bowl,color: Colors.white,size: 40,),
            SizedBox(width: 20,),
            Icon(Icons.add_to_queue,color: Colors.white,size: 40,),
          ],),
          SizedBox(height: 10,),
          Row(children: [
            Icon(Icons.access_alarms_outlined,size: 30,color: Colors.white,),
             Icon(Icons.alarm_off_outlined,size: 30,color: Colors.white,),
              Icon(Icons.bar_chart_sharp,size: 30,color: Colors.white,),
               Icon(Icons.roofing_sharp,size: 30,color: Colors.white,),
               SizedBox(width: 45,),
               Container(
                height: 60,
                width: 200,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 228, 157, 52),
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Icon(Icons.money,color: Colors.orange,size: 30,)),
                    ),
                    Text('Balanch',
                    style: TextStyle(color: Colors.white,
                    fontSize:30,fontWeight: FontWeight.bold),)
                  ],
                ),
               )
          ],),
          SizedBox(height: 10,),
       
          Expanded(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                  Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 10,
                      blurRadius: 10,
                    )
                  ]
                ),
              ),
              Container(
                height: 500,
                child: Column(
                  children: [
                    chobi(
                    
                    ),
                     chobi(),
                      chobi(),
                       chobi(),
                  ],
                ),
              ),
          
             ListView(
              scrollDirection: Axis.horizontal,
             children: [
                photo(
                 image: Image.asset('assets/a.webp'),
                 color: const Color.fromARGB(179, 230, 143, 143),
                 datatex: 'Add money',
                ),
                photo(
                 image: Image.asset('assets/b.jpeg'),
                 color: Colors.white70,
                 datatex: 'Add money',
                ),
                 photo(
                 image: Image.asset('assets/c.jpeg'),
                 color: Color.fromARGB(179, 86, 95, 224),
                 datatex: 'Add money',
                ),
                 photo(
                 image: Image.asset('assets/d.png'),
                 color: Color.fromARGB(179, 122, 224, 39),
                 datatex: 'Add money',
                ),
                 photo(
                 image: Image.asset('assets/d.png'),
                 color: const Color.fromARGB(179, 168, 0, 0),
                 datatex: 'Add money',
                ),
                 photo(
                 image: Image.asset('assets/d.png'),
                 color: Colors.white70,
                 datatex: 'Add money',
                ),
             ],
             ),

             
              ],
             
            ),
          )),
          
         
        ],
      )),
    );
  }
}