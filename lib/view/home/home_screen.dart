import 'package:flutter/material.dart';
import 'package:task_manager_app/utils/constants.dart';
import 'package:task_manager_app/view/widgets/task_action_row_widget.dart';
import 'package:task_manager_app/view/widgets/top_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            kheight10,
            const TopBarWidget(),
            kheight45,
            const TaskActionRowWidget(),
            kheight10,
            Container(
              
              height: 160,
              width: 200,
              decoration: BoxDecoration(
                color: kgrey,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Column(
                children: [
                  Container(
                    height: 30,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(30)
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

