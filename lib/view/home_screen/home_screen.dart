import 'package:flutter/material.dart';
import 'package:model_class_sample/controller/home_screen_controller.dart';
import 'package:model_class_sample/view/home_screen/widgets/my_name_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeScreenController obj = HomeScreenController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          obj.addName("akhil ");
          setState(() {});
        },
      ),
      body: SafeArea(
          child: ListView.builder(
        itemCount: obj.myList.length,
        itemBuilder: (context, index) => MyNameCard(
          name: obj.myList[index],
          onDeletePressed: () {
            obj.deleteName(index);
            setState(() {});
          },
        ),
      )),
    );
  }
}
