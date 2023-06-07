import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String? title;
  final int? number;
  final Color? color;

  const AppButton({Key? key, this.title, this.number, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: number == 2 ? 30 : 55,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 25),
      decoration: BoxDecoration(
        color: color ?? Colors.red,
        borderRadius: BorderRadius.circular(20),
      ),
      alignment: Alignment.center,
      child: Row(
        children: [
          Text(
            number.toString(),
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          Text(
            title ?? "",
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
