import 'package:flutter/material.dart';
import 'package:random/constant/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: PRIMARY_COLOR,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '랜덤숫자 생성기',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.settings,
                          color: RED_COLOR,
                        )),
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      123,
                      456,
                      789,
                    ]
                        .map(
                          (x) => Row(
                            children: x
                                .toString()
                                .split('')
                                .map((y) => Image.asset(
                                      'asset/img/${y}.png',
                                      height: 70.0,
                                      width: 40.0,
                                    ))
                                .toList(),
                          ),
                        )
                        .toList(),
                  ),
                ),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        '생성하기!',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: RED_COLOR,
                      ),
                    ))
              ],
            ),
          ),
        ));
  }
}