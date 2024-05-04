import 'package:flutter/material.dart';
import 'package:task_manager_app/utils/constants.dart';
import 'package:task_manager_app/view/tasks/add_task_screen.dart';

class MyTaskAppBarWidget extends StatelessWidget {
  const MyTaskAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Tasks',
              style: textstyle1,
            ),
            kheight5,
            Text(
              '20 Tasks added in this week',
              style: textstyle10,
            )
          ],
        ),
        const Spacer(),
        CircleAvatar(
          backgroundColor: kgrey.shade400,
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.format_align_left_outlined,
                size: 25,
              )),
        ),
        kwidth10,
        CircleAvatar(
          backgroundColor: kgrey.shade400,
          child: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddTaskScreen(),
                    ));
              },
              icon: const Icon(
                Icons.add,
                size: 25,
              )),
        ),
        kwidth10
      ],
    );
  }
}
