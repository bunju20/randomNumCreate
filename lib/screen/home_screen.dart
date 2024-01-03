import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('랜덤숫자 생성기'),
              IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
            ],
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('1234'),
                    Text('1234'),
                    Text('1234'),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
              child: ElevatedButton(onPressed: () {},
                  child: Text('생성하기!')))
        ],
      ),
    ));
  }
}
