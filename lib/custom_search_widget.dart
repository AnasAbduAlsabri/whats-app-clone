import 'package:flutter/material.dart';

class CustomSearchWidget extends StatelessWidget{
  const CustomSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {

  return 
  Container(
    height: 40,
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 30, 30, 30),
      borderRadius: BorderRadius.circular(20),
    ),
    child: const TextField(
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: 'ابحث في المحادثات',
        hintStyle: TextStyle(color: Colors.white54),
        suffixIcon: Icon(Icons.search, color: Colors.white54),
        border: InputBorder.none,
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
        hintTextDirection: TextDirection.rtl
      ),
    ),
  );
  }

}