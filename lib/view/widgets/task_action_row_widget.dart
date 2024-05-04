import 'package:flutter/material.dart';
import 'package:task_manager_app/utils/constants.dart';

class TaskActionRowWidget extends StatelessWidget {
  const TaskActionRowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kwidth18,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Tasks',
              style: textstyle1,
            ),
            kheight5,
            const Text(
              '18 Tasks Pending',
              style: TextStyle(fontSize: 12, color: kgrey),
            )
          ],
        ),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              size: 30,
            )),
        Container(
          color: kgrey,
          height: 40,
          width: 1,
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_forward,
              size: 25,
            )),
        kwidth10
      ],
    );
  }
}
