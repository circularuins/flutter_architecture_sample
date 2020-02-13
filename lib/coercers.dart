import 'package:intl/intl.dart';

final dateFormatter = DateFormat('yyyy-MM-dd');
final timeFormatter = DateFormat('HH:mm:ss');

DateTime fromGraphQLISO8601DateTimeToDartDateTime(String date) => DateTime.parse(date);
String fromDartDateTimeToGraphQLISO8601DateTime(DateTime date) => dateFormatter.format(date);
DateTime fromGraphQLISO8601TimeToDartDateTime(String time) => DateTime.parse('1970-01-01T${time}Z');
String fromDartDateTimeToGraphQLISO8601Time(DateTime date) => timeFormatter.format(date);
