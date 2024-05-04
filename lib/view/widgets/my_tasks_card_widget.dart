import 'package:flutter/material.dart';
import 'package:task_manager_app/utils/constants.dart';

class MyTasksCardWidget extends StatelessWidget {
  final MaterialColor color;
  final MaterialColor textColor;
  final String title;
  final String status;

  final String subTitle;
  final String date;
  const MyTasksCardWidget({
    super.key,
    required this.color,
    required this.textColor,
    required this.title,
    required this.subTitle,
    required this.date,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 200,
      decoration:
          BoxDecoration(color: kwhite, borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          kheight10,
          Row(
            children: [
              kwidth18,
              Container(
                height: 27,
                width: 50,
                decoration: BoxDecoration(
                    color: color.shade100,
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                    child: Text(
                  status,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: textColor),
                )),
              ),
            ],
          ),
          kheight20,
          Row(
            children: [
              kwidth18,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: textstyle1,
                  ),
                  Text(
                    subTitle,
                    style: textstyle1,
                  ),
                ],
              ),
            ],
          ),
          kheight10,
          Row(
            children: [
              kwidth10,
              const Icon(
                Icons.calendar_today_outlined,
                size: 20,
              ),
              Text(
                date,
                style: textstyle10,
              )
            ],
          )
        ],
      ),
    );
  }
}
