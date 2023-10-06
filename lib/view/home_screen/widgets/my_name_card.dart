import 'package:flutter/material.dart';

class MyNameCard extends StatelessWidget {
  const MyNameCard({super.key, this.name = "", this.onDeletePressed});

  final String? name;
  final void Function()? onDeletePressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Colors.red),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(name!),
            IconButton(onPressed: onDeletePressed, icon: Icon(Icons.delete))
          ],
        ),
      ),
    );
  }
}
