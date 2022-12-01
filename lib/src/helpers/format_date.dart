import 'package:timeago/timeago.dart' as timeago;

abstract class FormatDate {
  static String toRelative(DateTime date) {
    timeago.setLocaleMessages('fr', timeago.FrMessages());
    return timeago.format(date, locale:"fr");
  }
}