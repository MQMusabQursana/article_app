import 'package:logger/logger.dart';

final _logger = Logger();

void printLog(dynamic log) {
  _logger.d(log.toString());
}
