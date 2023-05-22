import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  final String? image;
  final String? name;
  final Color? color;
  final Widget? child;

  const CategoryTile({
    Key? key,
    this.image,
    this.name,
    this.color,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image.asset(
          image ?? "",
          width: 135,
          height: 135,
          fit: BoxFit.cover,
        ),
        Container(
          width: 135,
          height: 100,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0x00161616),
                Color(0xFF161616),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(
            name ?? "",
            style: const TextStyle(
              fontSize: 20,
              color: Color(0xFFFFFFFF),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
