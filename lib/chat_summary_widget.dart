import 'package:flutter/material.dart';

class ChatSummaryWidget extends StatelessWidget {
  const ChatSummaryWidget(
      {super.key, required this.name, required this.lastMessage});
  final String name;
  final String lastMessage;

  @override
  Widget build(Object context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: 
      Row(
        textDirection: TextDirection.rtl,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const CircleAvatar(
            foregroundImage: AssetImage('assets/images/image_1.jpg'),
            radius: 30,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.person,
              color: Colors.black,
              size: 30,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                name,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                lastMessage,
                style: const TextStyle(color: Colors.white, fontSize: 14),
              ),
            ],
          ),
          const Spacer(),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "12:30",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
              SizedBox(
                height: 8,
              ),
              Icon(
                Icons.check,
                color: Colors.white,
                size: 16,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
