import 'app_localizations.g.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get locale_name => 'English';

  @override
  String get projectTitle => 'Flowerpot';

  @override
  String get feature_main_text_description => 'Start caring for your plant to help it live longer';

  @override
  String get feature_welcome_button_new_game => 'New game';

  @override
  String get feature_welcome_button_continue => 'Continue';

  @override
  String get feature_interactions_app_bar => 'Interactions';

  @override
  String get feature_interactions_title_water => 'Water';

  @override
  String get feature_interactions_card_water_title2 => 'Glass';

  @override
  String get feature_interactions_card_water_title3 => 'Jug';

  @override
  String get feature_interactions_card_water_title4 => 'Bucket';

  @override
  String get feature_interactions_title_light => 'Light';

  @override
  String get feature_interactions_card_light_title2 => 'Daylight';

  @override
  String get feature_interactions_card_light_title3 => 'Fluorescent';

  @override
  String get feature_interactions_card_light_title4 => 'Ultraviolet';

  @override
  String get feature_interactions_title_fertilizer => 'Fertilizer';

  @override
  String get feature_interactions_card_fertilizer_title2 => 'Compost';

  @override
  String get feature_interactions_card_fertilizer_title3 => 'Nitrogenous';

  @override
  String get feature_interactions_card_fertilizer_title4 => 'Phosphorous';

  @override
  String feature_interactions_card_comment(Object point) {
    return '+$point points';
  }
}
