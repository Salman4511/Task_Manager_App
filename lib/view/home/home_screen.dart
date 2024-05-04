import 'package:flutter/material.dart';
import 'package:task_manager_app/utils/constants.dart';
import 'package:task_manager_app/view/widgets/my_tasks_card_widget.dart';
import 'package:task_manager_app/view/widgets/task_action_row_widget.dart';
import 'package:task_manager_app/view/widgets/todays_task_tile_widget.dart';
import 'package:task_manager_app/view/widgets/top_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kgrey.shade200,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              kheight10,
              const TopBarWidget(),
              kheight45,
              const TaskActionRowWidget(),
              kheight10,
              SizedBox(
                height: 200,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Row(
                    children: [
                      kheight10,
                      const Padding(
                        padding: EdgeInsets.all(18.0),
                        child: MyTasksCardWidget(
                          color: kred,
                          textColor: kred,
                          title: 'Create a',
                          subTitle: 'Landing Page',
                          date: 'Mon, 12 July 2022',
                          status: 'High',
                        ),
                      ),
                      const MyTasksCardWidget(
                        color: kgreen,
                        textColor: kgreen,
                        title: 'Develop a',
                        subTitle: 'Website',
                        date: 'Mon, 30 July 2022',
                        status: 'Low',
                      ),
                    ],
                  ),
                ),
              ),
              Row(children: [
                kwidth18,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Today\'s Tasks',
                      style: textstyle1,
                    ),
                    kheight5,
                    const Text(
                      '18 Tasks Pending',
                      style: TextStyle(fontSize: 12, color: kgrey),
                    )
                  ],
                ),
              ]),
              SizedBox(
                height: 500,
                child: ListView.builder(
                    itemBuilder: (context, index) => const TodaysTaskTileWidget(
                          isVisible: false,
                        )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
