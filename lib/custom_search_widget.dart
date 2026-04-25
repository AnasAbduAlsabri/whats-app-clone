import 'package:flutter/material.dart';

class CustomSearchWidget extends StatefulWidget {
  const CustomSearchWidget({super.key});

  @override
  State<StatefulWidget> createState() => _SearchState();
}

class _SearchState extends State<CustomSearchWidget> {
  String _searchText = "";
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 30, 30, 30),
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextField(
            onChanged: (value) {
              setState(() {
                _searchText = value;
              });
            },
            controller: _controller,
            textDirection: TextDirection.rtl,
            cursorColor: Colors.white,
            style: const TextStyle(color: Colors.white),
            decoration: const InputDecoration(
                hintText: 'ابحث في المحادثات',
                hintStyle: TextStyle(color: Colors.white54),
                suffixIcon: Icon(Icons.search, color: Colors.white54),
                border: InputBorder.none,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
                hintTextDirection: TextDirection.rtl),
          ),
        ),
        if(_searchText.isNotEmpty)
        Text("انت تبحث عن : $_searchText",style: TextStyle(color: Colors.white),)

      ],
    );
  }
}
