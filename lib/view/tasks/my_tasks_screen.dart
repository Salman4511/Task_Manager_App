import 'package:flutter/material.dart';
import 'package:task_manager_app/utils/constants.dart';
import 'package:task_manager_app/view/widgets/my_task_app_bar_widget.dart';
import 'package:task_manager_app/view/widgets/todays_task_tile_widget.dart';

class MyTasksSCreen extends StatelessWidget {
  const MyTasksSCreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kgrey.shade200,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              kheight20,
              const MyTaskAppBarWidget(),
              kheight10,
              const TodaysTaskTileWidget(
                isVisible: true,
              ),
              const TodaysTaskTileWidget(
                isVisible: false,
              ),
              const TodaysTaskTileWidget(
                isVisible: false,
              ),
              const TodaysTaskTileWidget(
                isVisible: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
