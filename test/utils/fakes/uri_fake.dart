import 'package:mocktail/mocktail.dart';

class UriFake extends Fake implements Uri {
  @override
  String get path => 'path';
}
