import 'package:flutter/material.dart';
import 'package:model_class_sample/model/my_name_model.dart';
import 'package:model_class_sample/view/home_screen/widgets/my_name_card.dart';

import '../../controller/home_screen_controller.dart';

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
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          obj.addName(MyNameModel(name: "askl;dl"));
        });
      }),
      body: SafeArea(
          child: ListView.builder(
              itemCount: obj.myNameList.length,
              itemBuilder: (context, index) => MyCard(
                    name: obj.myNameList[index].name,
                    color: obj.myNameList[index].containerColor,
                    onDeletePressed: () {
                      obj.deleteName(index);
                      setState(() {});
                    },
                  ))),
    );
  }
}
