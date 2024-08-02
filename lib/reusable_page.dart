import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

class ReusableCard extends StatelessWidget {
  String? text;
  String? sText;

  ReusableCard({this.text, this.sText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105,
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color(0xFFF9F9F9),
          borderRadius: BorderRadius.circular(15)),
      alignment: Alignment.topRight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Flexible(
                child: Text(
                  text!,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Flexible(
                child: Text(
                  sText!,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.all(5),
            height: 120,
            width: 120,
            decoration: BoxDecoration(
                color: const Color(0xFF58C2C5),
                borderRadius: BorderRadius.circular(15)),
            child:
                Lottie.asset('assets/lottie/Animation - 1711545313416.json'),
          ),
        ],
      ),
    );
  }
}
