import 'package:flutter/material.dart';
import 'package:task_manager_app/utils/constants.dart';

class TodaysTaskTileWidget extends StatelessWidget {
  final bool isVisible;
  const TodaysTaskTileWidget({
    super.key,
    required this.isVisible,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0, right: 18, top: 10),
      child: Container(
        height: 180,
        decoration: BoxDecoration(
          color: kwhite,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            kheight20,
            Row(
              children: [
                kwidth18,
                Container(
                  height: 27,
                  width: 50,
                  decoration: BoxDecoration(
                      color: kred.shade100,
                      borderRadius: BorderRadius.circular(30)),
                  child: const Center(
                      child: Text(
                    'High',
                    style: TextStyle(
                        fontSize: 12, fontWeight: FontWeight.bold, color: kred),
                  )),
                ),
                kwidth10,
                Container(
                  height: 27,
                  width: 95,
                  decoration: BoxDecoration(
                      color: kblue.shade100,
                      borderRadius: BorderRadius.circular(30)),
                  child: const Center(
                      child: Text(
                    'Project Name',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: kblue),
                  )),
                ),
              ],
            ),
            kheight10,
            Row(
              children: [
                kwidth18,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Create a Landing Page and',
                      style: textstyle8,
                    ),
                    Text(
                      'design as figma given',
                      style: textstyle8,
                    ),
                  ],
                ),
              ],
            ),
            kheight10,
            const Divider(
              indent: 10,
              endIndent: 230,
              thickness: 2,
            ),
            Row(
              children: [
                kwidth10,
                const Icon(
                  Icons.calendar_today_outlined,
                  size: 22,
                ),
                Text(
                  ' Mon, 12 July 2022',
                  style: textstyle10,
                ),
                const Spacer(),
                isVisible
                    ? SizedBox(
                        width: 100,
                        child: Stack(
                          children: [
                            const CircleAvatar(
                              backgroundColor: kgreen,
                              backgroundImage: NetworkImage(
                                  'https://img.freepik.com/free-photo/freedom-concept-with-hiker-mountain_23-2148107064.jpg'),
                            ),
                            const Positioned(
                              left: 20,
                              child: CircleAvatar(
                                backgroundColor: kred,
                                backgroundImage: NetworkImage(
                                    'https://images.unsplash.com/photo-1544005313-94ddf0286df2?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8d29tYW4lMjBwcm9maWxlfGVufDB8fDB8fHww'),
                              ),
                            ),
                            Positioned(
                              left: 40,
                              child: CircleAvatar(
                                  radius: 20,
                                  backgroundColor: kblue,
                                  child: CircleAvatar(
                                    radius: 18,
                                    backgroundColor: Colors.yellow,
                                    child: Text(
                                      '1+',
                                      style: textstyle11,
                                    ),
                                  )),
                            )
                          ],
                        ),
                      )
                    : const SizedBox()
              ],
            )
          ],
        ),
      ),
    );
  }
}
