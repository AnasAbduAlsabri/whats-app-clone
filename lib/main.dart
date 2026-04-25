import 'package:flutter/material.dart';
import 'package:whats_app_clone/chat_summary_widget.dart';
import 'package:whats_app_clone/custom_search_widget.dart';
import 'package:whats_app_clone/custom_statefull_widget.dart';
import 'package:whats_app_clone/test_widget.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const WhatsApp());
}

class WhatsApp extends StatefulWidget {
  const WhatsApp({super.key});

  @override
  State<StatefulWidget> createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {
  int mssgCount = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp Clone',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          // actions: [
          //   Container(
          //     color: Colors.red,
          //     padding: const EdgeInsets.only( left: 0.0),
          //     alignment: Alignment.centerLeft,
          //     child:const Row(
          //       children: [
          //         Icon(
          //           Icons.more_vert,
          //           color: Colors.white,
          //         ),
          //         SizedBox(width: 8),
          //         Icon(
          //           Icons.camera_alt_outlined,
          //           color: Colors.white,
          //         ),
          //       ],
          //     ),
          //   ),
          // ],

          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50.0),
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              alignment: Alignment.center,
              child: const CustomSearchWidget(),
            ),
          ),
          leadingWidth: 100,
          leading: Container(
            padding: const EdgeInsets.only(left: 16.0),
            alignment: Alignment.centerLeft,
            child: const Row(
              children: [
                Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
                SizedBox(width: 8),
                Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          title: Container(
            padding: const EdgeInsets.only(right: 16.0),
            alignment: Alignment.centerRight,
            child: const Text('واتساب', style: TextStyle(color: Colors.white)),
          ),
          backgroundColor: Colors.black,
        ),
        body: const SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              ChatSummaryWidget(name: 'محمد', lastMessage: 'مرحبا كيف حالك؟'),
              ChatSummaryWidget(name: 'علي', lastMessage: 'هل تريد الخروج؟'),
              ChatSummaryWidget(
                  name: 'سارة', lastMessage: 'متى موعد الاجتماع؟'),
              ChatSummaryWidget(name: 'محمد', lastMessage: 'مرحبا كيف حالك؟'),
              ChatSummaryWidget(name: 'علي', lastMessage: 'هل تريد الخروج؟'),
              ChatSummaryWidget(
                  name: 'سارة', lastMessage: 'متى موعد الاجتماع؟'),
              ChatSummaryWidget(name: 'محمد', lastMessage: 'مرحبا كيف حالك؟'),
              ChatSummaryWidget(name: 'علي', lastMessage: 'هل تريد الخروج؟'),
              ChatSummaryWidget(
                  name: 'سارة', lastMessage: 'متى موعد الاجتماع؟'),

              // TestWidget(),
            ],
          ),
        ),
        //  const Column(
        //   children: [
        //   ChatSummaryWidget(name: 'محمد', lastMessage: 'مرحبا كيف حالك؟'),
        //   ChatSummaryWidget(name: 'علي', lastMessage: 'هل تريد الخروج؟'),
        //   ChatSummaryWidget(name: 'سارة', lastMessage: 'متى موعد الاجتماع؟'),
        //   // TestWidget(),
        // ]),
        // Container(
        //   height: 700,
        //   // alignment: Alignment.center,
        //   color: Colors.white,
        //   child: SingleChildScrollView(
        //     child: Column(
        //       mainAxisSize: MainAxisSize.min,
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       children: [
        //         const Text("Row 1"),
        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //           // crossAxisAlignment: CrossAxisAlignment.end,
        //           mainAxisSize: MainAxisSize.max,
        //           children: [
        //             Container(
        //               height: 100,
        //               width: 100,
        //               color: Colors.red,
        //             ),
        //             Container(
        //               height: 100,
        //               width: 100,
        //               color: Colors.green,
        //             ),
        //             Container(
        //               height: 100,
        //               width: 100,
        //               color: Colors.blue,
        //             ),
        //           ],
        //         ),
        //         const SizedBox(
        //           height: 10,
        //         ),
        //         const Text("Row 2"),
        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceAround,
        //           // crossAxisAlignment: CrossAxisAlignment.end,
        //           mainAxisSize: MainAxisSize.max,
        //           children: [
        //             Container(
        //               height: 100,
        //               width: 100,
        //               color: Colors.red,
        //             ),
        //             Container(
        //               height: 100,
        //               width: 100,
        //               color: Colors.green,
        //             ),
        //             Container(
        //               height: 100,
        //               width: 100,
        //               color: Colors.blue,
        //             ),
        //           ],
        //         ),
        //         const SizedBox(height: 20,),
        //         Container(
        //           height: 300,
        //           width: 300,
        //           decoration: BoxDecoration(
        //             color: Colors.red,
        //             border: Border.all(color: Colors.white, width: 2.0),
        //             borderRadius: BorderRadius.circular(16.0),
        //           ),
        //           padding: const EdgeInsets.all(16.0),
        //           child: const Image(
        //             repeat: ImageRepeat.noRepeat,
        //             height: double.infinity,
        //             width: double.infinity,
        //             // fit: BoxFit.cover,
        //             image: AssetImage('assets/images/image_1.jpg'),
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          backgroundColor: Colors.white,
          child: const Icon(
            Icons.add_comment,
            color: Colors.black,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.lightGreen,
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.call,
                color: Colors.white,
              ),
              label: 'المكالمات',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.groups_3_outlined,
                color: Colors.white,
              ),
              label: 'المجتمعات',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.refresh,
                color: Colors.white,
              ),
              label: 'التحديثات',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.chat,
                color: Colors.white,
              ),
              label: 'الدردشات',
            ),
          ],
        ),
      ),
    );
  }
}
