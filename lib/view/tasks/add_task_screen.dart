import 'package:flutter/material.dart';
import 'package:task_manager_app/utils/constants.dart';
import 'package:task_manager_app/view/widgets/text_form_field_widget.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kgrey.shade200,
      appBar: AppBar(
        backgroundColor: kgrey.shade200,
        title: Text(
          'Add New Task',
          style: textstyle4,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const TextFormFieldWidget(
                    label: 'Write about your task',
                    maxlines: 10,
                  ),
                  kheight10,
                  const TextFormFieldWidget(
                    label: 'Select Project',
                    icon: Icons.arrow_forward,
                  ),
                  kheight10,
                  const TextFormFieldWidget(
                    label: 'Select Priority',
                    icon: Icons.arrow_forward,
                  ),
                  kheight10,
                  const TextFormFieldWidget(
                    label: 'Select Date',
                    icon: Icons.calendar_today_outlined,
                  ),
                  kheight100,
                  SizedBox(
                    height: 55,
                    width: 350,
                    child: FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: kblue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Text(
                        'Add to Task',
                        style: textstyle11,
                      ),
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
