import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_pt.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'arb/app_localizations.dart';
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

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
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
    Locale('en'),
    Locale('pt')
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Quote Generator'**
  String get appTitle;

  /// No description provided for @explore.
  ///
  /// In en, this message translates to:
  /// **'Explore'**
  String get explore;

  /// No description provided for @navBarHome.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get navBarHome;

  /// No description provided for @navBarCreateQuote.
  ///
  /// In en, this message translates to:
  /// **'Create Quote'**
  String get navBarCreateQuote;

  /// No description provided for @navBarSearch.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get navBarSearch;

  /// No description provided for @appBarCreateByYou.
  ///
  /// In en, this message translates to:
  /// **'Created by you'**
  String get appBarCreateByYou;

  /// No description provided for @appBarFavorite.
  ///
  /// In en, this message translates to:
  /// **'Favorites'**
  String get appBarFavorite;

  /// No description provided for @appBarSearchQuote.
  ///
  /// In en, this message translates to:
  /// **'Search Quote'**
  String get appBarSearchQuote;

  /// No description provided for @appBarQuoteDetails.
  ///
  /// In en, this message translates to:
  /// **'Quote Details'**
  String get appBarQuoteDetails;

  /// No description provided for @appBarSettings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get appBarSettings;

  /// No description provided for @alertTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete this quote?'**
  String get alertTitle;

  /// No description provided for @alertContent.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this quote?'**
  String get alertContent;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @emptyCardCreatedByYou.
  ///
  /// In en, this message translates to:
  /// **'You haven\'t created any quotes yet'**
  String get emptyCardCreatedByYou;

  /// No description provided for @emptyCardFavoriteQuote.
  ///
  /// In en, this message translates to:
  /// **'You haven\'t added any quotes to your favorites yet'**
  String get emptyCardFavoriteQuote;

  /// No description provided for @emptyCardDiscovery.
  ///
  /// In en, this message translates to:
  /// **'There is no quote from the server yet!'**
  String get emptyCardDiscovery;

  /// No description provided for @createYourQuote.
  ///
  /// In en, this message translates to:
  /// **'Create Your Quote'**
  String get createYourQuote;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @backgroundColor.
  ///
  /// In en, this message translates to:
  /// **'Select background color'**
  String get backgroundColor;

  /// No description provided for @selectColorShade.
  ///
  /// In en, this message translates to:
  /// **'Select color shade'**
  String get selectColorShade;

  /// No description provided for @writeYourQuoteHere.
  ///
  /// In en, this message translates to:
  /// **'Start writing your quote here ...'**
  String get writeYourQuoteHere;

  /// No description provided for @quoteAuhtor.
  ///
  /// In en, this message translates to:
  /// **'Quote author ...'**
  String get quoteAuhtor;

  /// No description provided for @none.
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get none;

  /// No description provided for @small.
  ///
  /// In en, this message translates to:
  /// **'Small'**
  String get small;

  /// No description provided for @medium.
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get medium;

  /// No description provided for @large.
  ///
  /// In en, this message translates to:
  /// **'Large'**
  String get large;

  /// No description provided for @letterSpacing.
  ///
  /// In en, this message translates to:
  /// **'Letter spacing'**
  String get letterSpacing;

  /// No description provided for @fontSize.
  ///
  /// In en, this message translates to:
  /// **'Font size'**
  String get fontSize;

  /// No description provided for @wordSpacing.
  ///
  /// In en, this message translates to:
  /// **'Word spacing'**
  String get wordSpacing;

  /// No description provided for @quoteCreatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Quote created successfully!'**
  String get quoteCreatedSuccessfully;

  /// No description provided for @quotePostedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Quote posted successfully!'**
  String get quotePostedSuccessfully;

  /// No description provided for @quoteDeletedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Quote deleted successfully'**
  String get quoteDeletedSuccessfully;

  /// No description provided for @quoteRemovedFromFav.
  ///
  /// In en, this message translates to:
  /// **'Quote removed from favorites successfully'**
  String get quoteRemovedFromFav;

  /// No description provided for @quoteAddedToFav.
  ///
  /// In en, this message translates to:
  /// **'Quote added to favorites successfully'**
  String get quoteAddedToFav;

  /// No description provided for @emptyQuoteAlert.
  ///
  /// In en, this message translates to:
  /// **'Quote must not be empty!'**
  String get emptyQuoteAlert;

  /// No description provided for @enterQuoteToSave.
  ///
  /// In en, this message translates to:
  /// **'Please enter a quote to save this.'**
  String get enterQuoteToSave;

  /// No description provided for @searchQuoteHintText.
  ///
  /// In en, this message translates to:
  /// **'Find a quote here ...'**
  String get searchQuoteHintText;

  /// No description provided for @searchQuoteEmptyScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'Search for a Quote'**
  String get searchQuoteEmptyScreenTitle;

  /// No description provided for @searchQuoteEmptyScreenDescritpion.
  ///
  /// In en, this message translates to:
  /// **'Start typing to see suggestions'**
  String get searchQuoteEmptyScreenDescritpion;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @darkMode.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get darkMode;

  /// No description provided for @lightMode.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get lightMode;

  /// No description provided for @imageSaved.
  ///
  /// In en, this message translates to:
  /// **'Photo Saved on Library'**
  String get imageSaved;

  /// No description provided for @somethingWentWrong.
  ///
  /// In en, this message translates to:
  /// **'Oops, Something went wrong!'**
  String get somethingWentWrong;

  /// No description provided for @goToHome.
  ///
  /// In en, this message translates to:
  /// **'Go to home screen'**
  String get goToHome;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @copiedToClipboard.
  ///
  /// In en, this message translates to:
  /// **'quote copied to clipboard'**
  String get copiedToClipboard;

  /// No description provided for @signInGoogle.
  ///
  /// In en, this message translates to:
  /// **'Sign In with Google'**
  String get signInGoogle;

  /// No description provided for @signOut.
  ///
  /// In en, this message translates to:
  /// **'Sign Out'**
  String get signOut;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'pt'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'pt': return AppLocalizationsPt();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
