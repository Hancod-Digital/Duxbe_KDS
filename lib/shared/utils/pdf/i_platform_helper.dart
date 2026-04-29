import 'package:duxbe_kds/shared/utils/pdf/platform_helper.dart';
import 'package:pdf/widgets.dart';

// ignore: one_member_abstracts
abstract class IPdfPlatform {
  factory IPdfPlatform() => getInstance();
  Future<void> savePdf(Document pdf, {bool print = false});
}
