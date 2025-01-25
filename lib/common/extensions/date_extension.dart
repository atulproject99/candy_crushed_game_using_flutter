import 'package:intl/intl.dart';

/// Timer formatter
extension DateFormatter on DateTime {
  String get formatDate => DateFormat('d MMM y').format(this);
}
