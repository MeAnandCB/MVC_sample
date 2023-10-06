import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String name;
  final VoidCallback? onDeletePressed;
  final Color? color;
  const MyCard({
    super.key,
    required this.name,
    this.onDeletePressed,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: color ?? Colors.red),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            IconButton(onPressed: onDeletePressed, icon: Icon(Icons.delete))
          ],
        ),
      ),
    );
  }
}
