class DateData {
  final int year = DateTime.now().year;
  final int month = DateTime.now().month;
  final int day = DateTime.now().day;
  String dayOfWeek = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'][DateTime.now().weekday - 1];
  @override
  String toString() {
    return '$year-$month-$day, $dayOfWeek';
  }
}