import 'package:flutter/material.dart';
import 'package:task_manager_app/utils/constants.dart';

class TopBarWidget extends StatelessWidget {
  @override

  const TopBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    
        return Row(
          children: [
            kwidth18,
            const CircleAvatar(
              radius: 30,
              backgroundColor: kwhite,
              child: CircleAvatar(
                radius: 33,
                backgroundImage: NetworkImage('https://img.freepik.com/free-photo/freedom-concept-with-hiker-mountain_23-2148107064.jpg'),
              ),
            ),
            kwidth10,
            const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Good Evening,',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  'Dan Smith',
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                )
              ],
            ),
            const Spacer(),
            CircleAvatar(
              radius: 22,
              backgroundColor: kgrey.shade200,
              child: Stack(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_none,
                      size: 28,
                      color: kblack,
                    ),
                  ),
                  Positioned(
                    right: 13,
                    top: 13,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      child: const SizedBox()
                    ),
                  ),
                ],
              ),
            ),
            kwidth18
          ],
        );
    
  }
}
