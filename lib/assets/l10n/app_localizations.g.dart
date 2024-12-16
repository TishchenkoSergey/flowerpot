import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.g.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.g.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en')
  ];

  /// No description provided for @locale_name.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get locale_name;

  /// No description provided for @projectTitle.
  ///
  /// In en, this message translates to:
  /// **'Flowerpot'**
  String get projectTitle;

  /// No description provided for @feature_main_text_description.
  ///
  /// In en, this message translates to:
  /// **'Start caring for your plant to help it live longer'**
  String get feature_main_text_description;

  /// No description provided for @feature_welcome_button_new_game.
  ///
  /// In en, this message translates to:
  /// **'New game'**
  String get feature_welcome_button_new_game;

  /// No description provided for @feature_welcome_button_continue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get feature_welcome_button_continue;

  /// No description provided for @feature_interactions_app_bar.
  ///
  /// In en, this message translates to:
  /// **'Interactions'**
  String get feature_interactions_app_bar;

  /// No description provided for @feature_interactions_title_water.
  ///
  /// In en, this message translates to:
  /// **'Water'**
  String get feature_interactions_title_water;

  /// No description provided for @feature_interactions_card_water_title2.
  ///
  /// In en, this message translates to:
  /// **'Glass'**
  String get feature_interactions_card_water_title2;

  /// No description provided for @feature_interactions_card_water_title3.
  ///
  /// In en, this message translates to:
  /// **'Jug'**
  String get feature_interactions_card_water_title3;

  /// No description provided for @feature_interactions_card_water_title4.
  ///
  /// In en, this message translates to:
  /// **'Bucket'**
  String get feature_interactions_card_water_title4;

  /// No description provided for @feature_interactions_title_light.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get feature_interactions_title_light;

  /// No description provided for @feature_interactions_card_light_title2.
  ///
  /// In en, this message translates to:
  /// **'Daylight'**
  String get feature_interactions_card_light_title2;

  /// No description provided for @feature_interactions_card_light_title3.
  ///
  /// In en, this message translates to:
  /// **'Fluorescent'**
  String get feature_interactions_card_light_title3;

  /// No description provided for @feature_interactions_card_light_title4.
  ///
  /// In en, this message translates to:
  /// **'Ultraviolet'**
  String get feature_interactions_card_light_title4;

  /// No description provided for @feature_interactions_title_fertilizer.
  ///
  /// In en, this message translates to:
  /// **'Fertilizer'**
  String get feature_interactions_title_fertilizer;

  /// No description provided for @feature_interactions_card_fertilizer_title2.
  ///
  /// In en, this message translates to:
  /// **'Compost'**
  String get feature_interactions_card_fertilizer_title2;

  /// No description provided for @feature_interactions_card_fertilizer_title3.
  ///
  /// In en, this message translates to:
  /// **'Nitrogenous'**
  String get feature_interactions_card_fertilizer_title3;

  /// No description provided for @feature_interactions_card_fertilizer_title4.
  ///
  /// In en, this message translates to:
  /// **'Phosphorous'**
  String get feature_interactions_card_fertilizer_title4;

  /// No description provided for @feature_interactions_card_comment.
  ///
  /// In en, this message translates to:
  /// **'+{point} points'**
  String feature_interactions_card_comment(Object point);

  /// No description provided for @feature_game_play_new_game_title.
  ///
  /// In en, this message translates to:
  /// **'Start game?'**
  String get feature_game_play_new_game_title;

  /// No description provided for @feature_game_play_new_game_description.
  ///
  /// In en, this message translates to:
  /// **'Be careful and this beautiful flower will always be with you.'**
  String get feature_game_play_new_game_description;

  /// No description provided for @feature_game_play_new_game_positive_button.
  ///
  /// In en, this message translates to:
  /// **'GO!'**
  String get feature_game_play_new_game_positive_button;

  /// No description provided for @feature_game_play_new_game_negative_button.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get feature_game_play_new_game_negative_button;

  /// No description provided for @feature_game_play_end_game_title.
  ///
  /// In en, this message translates to:
  /// **'Game over'**
  String get feature_game_play_end_game_title;

  /// No description provided for @feature_game_play_end_game_description.
  ///
  /// In en, this message translates to:
  /// **'You have taken good care of your flower.\nI\'m sure it will be even better next time'**
  String get feature_game_play_end_game_description;

  /// No description provided for @feature_game_play_end_game_positive_button.
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get feature_game_play_end_game_positive_button;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
