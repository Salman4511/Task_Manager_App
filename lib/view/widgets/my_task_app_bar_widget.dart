import 'package:flutter/material.dart';
import 'package:task_manager_app/utils/constants.dart';
import 'package:task_manager_app/view/tasks/add_task_screen.dart';
import 'package:task_manager_app/view/widgets/drawer_tile_widget.dart';

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
              onPressed: () {
                showModalBottomSheet(
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (BuildContext context) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                         const DrawerTileWidget(title: 'All',),
                         const DrawerTileWidget(title: 'Today\'s Task'),
                         const DrawerTileWidget(title: 'This Week'),
                         const DrawerTileWidget(title: 'This Month'),
                        const SizedBox(height: 20),
                        SizedBox(
                          height: 55,
                          width: 350,
                          child: FloatingActionButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            backgroundColor: kwhite,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Text(
                              'Close',
                              style: textstyle00,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
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


