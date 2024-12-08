import 'package:byhemat/core/I18n/en.dart';
import 'package:byhemat/core/I18n/fr.dart';
import 'package:byhemat/core/I18n/ps.dart';
import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'fa': FarsiLanguage().keys,
        'en': EnglishLanguage().keys,
        'ps': PashtooLanguage().keys,
      };
}

abstract class AppTranslationsKeys {
  Map<String, String> get keys;
}
