import 'package:gaza_secret/app/translations/en_US/en_us_translations.dart';
import 'package:gaza_secret/app/translations/es_MX/es_mx_translations.dart';
import 'package:gaza_secret/app/translations/pt_BR/pt_br_translations.dart';

abstract class AppTranslation {
  static Map<String, Map<String, String>> translations = {
    'pt_BR': ptBR,
    'en_US': enUs,
    'es_mx': esMx
  };
}
