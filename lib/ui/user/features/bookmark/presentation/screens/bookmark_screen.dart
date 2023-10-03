import 'package:chips_choice/chips_choice.dart';
import 'package:easy_parking_app/config/colors/app_colors.dart';
import 'package:easy_parking_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookMarkScreen extends StatelessWidget {
  const BookMarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int tag = 0;

    List<String> choiceItems = [
      'Completed',
      'Canceled',
      'Ongoing',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Bookmark',
        ),
      ),
      body: Column(
        children: [
          ChipsChoice.single(
            value: tag,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            onChanged: (value) {},
            choiceItems: C2Choice.listFrom(
              source: choiceItems,
              value: (i, v) => i,
              label: (i, v) => v,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 5,
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(AppColors.kProfileCircleColor),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Image.asset(
                            Assets.testPCPPhoto3sizedforWeb,
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width / 2.3,
                            height: MediaQuery.of(context).size.height / 7,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 25,
                        ),
                        Column(
                          children: [
                            Text(
                              'Cairo Park',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                            const Row(
                              children: [
                                Icon(
                                  IconlyBroken.location,
                                  size: 24,
                                  color: Color(AppColors.kPrimaryColor),
                                ),
                                Text(
                                  'Naser city , Cairo',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              itemCount: 10,
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
            ),
          ),
        ],
      ),
    );
  }
}

/*
ChipsChoice.single(
          value: tag,
          onChanged: (value) => setState(() {
            tag = value;
            categoryController.text = buttons[tag];
          }),
          choiceItems: C2Choice.listFrom(
              source: buttons, value: (i, v) => i, label: (i, v) => v),
        )
* */
