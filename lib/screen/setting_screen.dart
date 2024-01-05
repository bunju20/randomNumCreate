import 'package:flutter/material.dart';
import 'package:random/constant/colors.dart';

class SettingScreen extends StatefulWidget {
  final int maxNumber;
  const SettingScreen({required this.maxNumber, Key?key}) : super(key:key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  double maxNumber = 1000;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    maxNumber = widget.maxNumber.toDouble();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: PRIMARY_COLOR,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _Body(maxNumber: maxNumber),
              _Footer(maxNumber: maxNumber, onSliderChanged: onSliderChanged,
                onButtonPressed: onButtonPressed,
              )

            ],
          ),
        ));
  }

  void onSliderChanged(double val) {
    setState(() {
      maxNumber = val;
    });
  }

  void onButtonPressed() {
    Navigator.of(context).pop(maxNumber.toInt());
  }
}

class _Body extends StatelessWidget {
  final double maxNumber;

  const _Body({required this.maxNumber, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: maxNumber
            .toInt()
            .toString()
            .split('')
            .map((e) =>
            Image.asset(
              'asset/img/$e.png',
              width: 50.0,
              height: 70.0,
            ))
            .toList(),
      ),
    );
  }
}

class _Footer extends StatelessWidget {
  final double maxNumber;
  final ValueChanged<double>? onSliderChanged;
  final VoidCallback onButtonPressed;

  const _Footer(
      {required this.onButtonPressed, required this.maxNumber, required this.onSliderChanged, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slider(
            value: maxNumber,
            min: 1000,
            max: 100000,
            onChanged: onSliderChanged),
        ElevatedButton(
            onPressed: onButtonPressed,
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
    );
  }
}
