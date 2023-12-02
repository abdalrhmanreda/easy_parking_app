import 'package:easy_parking_app/config/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';

class TableCalenderPart extends StatefulWidget {
  const TableCalenderPart({super.key});

  @override
  State<TableCalenderPart> createState() => _TableCalenderPartState();
}

class _TableCalenderPartState extends State<TableCalenderPart> {
  DateTime today = DateTime.now();
  DateTime focusDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(AppColors.kLightGreyColor),
      ),
      child: TableCalendar(
        focusedDay: today,
        firstDay: DateTime.now(),
        lastDay: DateTime.utc(2024, 12, 30),
        rowHeight: 38.h,
        onDaySelected: (selectedDay, focusedDay) {
          setState(() {
            today = selectedDay;
            focusDay = focusedDay;
          });
        },
        onPageChanged: (focusedDay) {
          focusedDay = focusedDay;
        },
        availableGestures: AvailableGestures.all,
        selectedDayPredicate: (day) => isSameDay(today, day),
        calendarFormat: CalendarFormat.month,
        pageAnimationCurve: Curves.fastEaseInToSlowEaseOut,
        headerStyle: const HeaderStyle(
          titleCentered: true,
          formatButtonVisible: false,
        ),
        calendarStyle: const CalendarStyle(
          selectedDecoration: BoxDecoration(
            color: Color(AppColors.kPrimaryColor),
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
