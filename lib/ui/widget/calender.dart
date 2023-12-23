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
          width: 0.8.sw,
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
            ),
            calendarStyle: const CalendarStyle(
              // 선택한 날짜의 focus 색상을 변경합니다.
              selectedDecoration: BoxDecoration(
                color: Color(0xFFD7E5F5),
                shape: BoxShape.circle,
              ),
              selectedTextStyle: TextStyle(
                color: SystemColors.systemBlue,
              ),
              // 현재 focus된 날짜의 색상을 변경합니다.
              todayDecoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              todayTextStyle: TextStyle(
                color: SystemColors.black,
              ),
              weekendTextStyle: TextStyle(
                color: SystemColors.black,
              ),
              // 다른 월에 속하는 날짜의 색상을 변경합니다.
              outsideDaysVisible: true, // 다른 월의 날짜를 숨기려면 true 대신 false로 설정하세요.
              outsideTextStyle: TextStyle(
                color: SystemColors.systemGray, // 변경할 색상을 지정하세요.
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
      ],
    );
  }
}
