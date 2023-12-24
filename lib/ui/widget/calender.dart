import 'package:app/utils/theme/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime _selectedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 0.2.sh,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Color(0xFFF4F4F4),
          ),
          width: 0.8.sw,
          child: Align(
            alignment: Alignment.center,
            child: TableCalendar(
              calendarFormat: _calendarFormat,
              focusedDay: _focusedDay,
              firstDay: DateTime.utc(0000, 00, 00),
              lastDay: DateTime.utc(2030, 12, 31),
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              headerStyle: const HeaderStyle(
                formatButtonVisible: false,
                titleTextStyle: TextStyle(
                  color: SystemColors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              calendarStyle: const CalendarStyle(
                selectedDecoration: BoxDecoration(
                  color: Color(0xFFD7E5F5),
                  shape: BoxShape.circle,
                ),
                selectedTextStyle: TextStyle(
                  color: SystemColors.systemBlue,
                ),
                todayDecoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                todayTextStyle: TextStyle(
                  color: SystemColors.black,
                ),
                weekendTextStyle: TextStyle(
                  color: SystemColors.black,
                ),
                outsideDaysVisible: true,
                outsideTextStyle: TextStyle(
                  color: SystemColors.systemGray,
                ),
              ),
              onFormatChanged: (format) {
                setState(() {
                  _calendarFormat = format;
                });
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
