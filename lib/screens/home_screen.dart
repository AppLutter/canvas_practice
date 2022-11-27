import 'package:canvas_practice/screens/rect/draw_rect_screen.dart';
import 'package:canvas_practice/utils/navigator.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> screenList = [
    const DrawRectScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        itemCount: screenList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              navigateToScreen(
                context: context,
                widget: screenList[index],
              );
            },
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.blueGrey,
              ),
              alignment: Alignment.center,
              child: Text('연습${index + 1}'),
            ),
          );
        },
      ),
    );
  }
}
