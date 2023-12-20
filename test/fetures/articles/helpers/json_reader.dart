import 'dart:io';

import 'package:article_app/features/core/utils/debugging_utils.dart';

String readJsonFromDummyDataDir(String name) {
  var dir = Directory.current.path;
  return File('$dir/test/fetures/articles/helpers/dummy_articles_data/$name').readAsStringSync();
}
