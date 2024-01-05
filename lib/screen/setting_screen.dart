import 'package:flutter/material.dart';
import 'package:random/constant/colors.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  double maxNumber = 10000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: PRIMARY_COLOR,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Row(
                  children: maxNumber.toInt()
                      .toString()
                      .split('')
                      .map((e) => Image.asset(
                            'asset/img/$e.png',
                            width: 50.0,
                            height: 70.0,
                          ))
                      .toList(),
                ),
              ),
              Slider(
                  value: maxNumber,
                  min: 10000,
                  max: 100000,
                  onChanged: (double val) {
                    setState(() {
                      maxNumber = val;
                    });
                  }),
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    '저장',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: RED_COLOR,
                  )),
            ],
          ),
        ));
  }
}
