// import 'package:Player160/utils/services/datadog_logger_info.dart';
// import 'package:Player160/utils/services/log_craslytics_content.dart';
import 'package:flutter/foundation.dart';

class Logger {
  static log({required String message}) {
    if (kDebugMode) {
      print(message);
    }
  }

  // static sendLogs({required String value}) {
  //   Clogger(content: value);
  //   Dlogger(content: value);
  // }
}
