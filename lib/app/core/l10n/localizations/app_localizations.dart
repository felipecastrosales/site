import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'package:site/app/core/l10n/l10n.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'localizations/app_localizations.dart';
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
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('es'),
    Locale('pt')
  ];

  /// No description provided for @projectTitle.
  ///
  /// In pt, this message translates to:
  /// **'Felipe Sales | Social Links'**
  String get projectTitle;

  /// No description provided for @felipeSales.
  ///
  /// In pt, this message translates to:
  /// **'Felipe Sales'**
  String get felipeSales;

  /// No description provided for @flutterDeveloperInstructor.
  ///
  /// In pt, this message translates to:
  /// **'Flutter Developer Instructor'**
  String get flutterDeveloperInstructor;

  /// No description provided for @hiIAmFelipeSales.
  ///
  /// In pt, this message translates to:
  /// **'Olá, sou Felipe Sales'**
  String get hiIAmFelipeSales;

  /// No description provided for @developerFocused.
  ///
  /// In pt, this message translates to:
  /// **'Desenvolvedor focado em aplicar seus conhecimentos em prática e construir coisas incríveis através de linhas de código.'**
  String get developerFocused;

  /// No description provided for @appsDeveloper.
  ///
  /// In pt, this message translates to:
  /// **'> Desenvolvedor de Apps'**
  String get appsDeveloper;

  /// No description provided for @applicationsDeveloper.
  ///
  /// In pt, this message translates to:
  /// **'> Desenvolvedor de Aplicativos'**
  String get applicationsDeveloper;

  /// No description provided for @home.
  ///
  /// In pt, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @deepCodeWayCode.
  ///
  /// In pt, this message translates to:
  /// **'Deep Code. Way Code.'**
  String get deepCodeWayCode;

  /// No description provided for @deep.
  ///
  /// In pt, this message translates to:
  /// **'Deep '**
  String get deep;

  /// No description provided for @code.
  ///
  /// In pt, this message translates to:
  /// **'Code. '**
  String get code;

  /// No description provided for @way.
  ///
  /// In pt, this message translates to:
  /// **'Way '**
  String get way;

  /// No description provided for @projects.
  ///
  /// In pt, this message translates to:
  /// **'Projetos'**
  String get projects;

  /// No description provided for @seeProjectsUpper.
  ///
  /// In pt, this message translates to:
  /// **'VER PROJETOS'**
  String get seeProjectsUpper;

  /// No description provided for @projectAreInMyGitHub.
  ///
  /// In pt, this message translates to:
  /// **'Grande parte dos projetos que já desenvolvi estão no meu GitHub de forma completamente open-source.'**
  String get projectAreInMyGitHub;

  /// No description provided for @experience.
  ///
  /// In pt, this message translates to:
  /// **'Experiência'**
  String get experience;

  /// No description provided for @workSuaMusica.
  ///
  /// In pt, this message translates to:
  /// **'Sua Música | 2022 - Atualmente'**
  String get workSuaMusica;

  /// No description provided for @workRocketseat.
  ///
  /// In pt, this message translates to:
  /// **'Rocketseat | 2021 - 2022'**
  String get workRocketseat;

  /// No description provided for @workUdemy.
  ///
  /// In pt, this message translates to:
  /// **'Udemy | 2020 - 2021'**
  String get workUdemy;

  /// No description provided for @workPersonalProjects.
  ///
  /// In pt, this message translates to:
  /// **'Projetos Pessoais | Desde 2020'**
  String get workPersonalProjects;

  /// No description provided for @flutterDeveloper.
  ///
  /// In pt, this message translates to:
  /// **'Desenvolvedor Flutter'**
  String get flutterDeveloper;

  /// No description provided for @developerInstructor.
  ///
  /// In pt, this message translates to:
  /// **'Desenvolvedor Instrutor'**
  String get developerInstructor;

  /// No description provided for @teachingAssistent.
  ///
  /// In pt, this message translates to:
  /// **'Auxiliar de Ensino'**
  String get teachingAssistent;

  /// No description provided for @payngPriceEveryday.
  ///
  /// In pt, this message translates to:
  /// **'Pagando o preço todos os dias'**
  String get payngPriceEveryday;

  /// No description provided for @socialLinks.
  ///
  /// In pt, this message translates to:
  /// **'Social Links'**
  String get socialLinks;

  /// No description provided for @gitHub.
  ///
  /// In pt, this message translates to:
  /// **'GitHub'**
  String get gitHub;

  /// No description provided for @linkedIn.
  ///
  /// In pt, this message translates to:
  /// **'LinkedIn'**
  String get linkedIn;

  /// No description provided for @stackOverFlow.
  ///
  /// In pt, this message translates to:
  /// **'Stack OverFlow'**
  String get stackOverFlow;

  /// No description provided for @discord.
  ///
  /// In pt, this message translates to:
  /// **'Discord'**
  String get discord;

  /// No description provided for @udemy.
  ///
  /// In pt, this message translates to:
  /// **'Udemy'**
  String get udemy;

  /// No description provided for @instagram.
  ///
  /// In pt, this message translates to:
  /// **'Instagram'**
  String get instagram;

  /// No description provided for @followMeOnMySocialNetworks.
  ///
  /// In pt, this message translates to:
  /// **'Me acompanhe nas minhas redes'**
  String get followMeOnMySocialNetworks;

  /// No description provided for @contact.
  ///
  /// In pt, this message translates to:
  /// **'Contato'**
  String get contact;

  /// No description provided for @name.
  ///
  /// In pt, this message translates to:
  /// **'Nome'**
  String get name;

  /// No description provided for @email.
  ///
  /// In pt, this message translates to:
  /// **'E-mail'**
  String get email;

  /// No description provided for @title.
  ///
  /// In pt, this message translates to:
  /// **'Título'**
  String get title;

  /// No description provided for @text.
  ///
  /// In pt, this message translates to:
  /// **'Texto'**
  String get text;

  /// No description provided for @sendEmailUpper.
  ///
  /// In pt, this message translates to:
  /// **'ENVIAR E-MAIL'**
  String get sendEmailUpper;

  /// No description provided for @emailSendedWithSuccess.
  ///
  /// In pt, this message translates to:
  /// **'E-mail enviado com sucesso!'**
  String get emailSendedWithSuccess;

  /// No description provided for @letsChatCallMe.
  ///
  /// In pt, this message translates to:
  /// **'Vamos bater um papo, me chame:'**
  String get letsChatCallMe;

  /// No description provided for @hyphen.
  ///
  /// In pt, this message translates to:
  /// **' - '**
  String get hyphen;

  /// No description provided for @username.
  ///
  /// In pt, this message translates to:
  /// **'@felipecastrosales'**
  String get username;

  /// No description provided for @dot.
  ///
  /// In pt, this message translates to:
  /// **'.'**
  String get dot;

  /// No description provided for @flutterProjectOpenSource.
  ///
  /// In pt, this message translates to:
  /// **'Um projeto Flutter OpenSource.'**
  String get flutterProjectOpenSource;

  /// No description provided for @seeInGitHub.
  ///
  /// In pt, this message translates to:
  /// **'Veja no GitHub'**
  String get seeInGitHub;

  /// No description provided for @seeInFigma.
  ///
  /// In pt, this message translates to:
  /// **'Veja no Figma'**
  String get seeInFigma;

  /// No description provided for @deepCode.
  ///
  /// In pt, this message translates to:
  /// **'Deep Code.'**
  String get deepCode;

  /// No description provided for @createdByFelipeCastroSales.
  ///
  /// In pt, this message translates to:
  /// **'Criado por @felipecastrosales™'**
  String get createdByFelipeCastroSales;

  /// No description provided for @insertValidName.
  ///
  /// In pt, this message translates to:
  /// **'Insira um nome válido.'**
  String get insertValidName;

  /// No description provided for @insertABiggerName.
  ///
  /// In pt, this message translates to:
  /// **'Insira um nome maior.'**
  String get insertABiggerName;

  /// No description provided for @thisNameIsNotValid.
  ///
  /// In pt, this message translates to:
  /// **'Este nome não é válido.'**
  String get thisNameIsNotValid;

  /// No description provided for @insertValidEmail.
  ///
  /// In pt, this message translates to:
  /// **'Insira um e-mail válido.'**
  String get insertValidEmail;

  /// No description provided for @thisEmailIsNotValid.
  ///
  /// In pt, this message translates to:
  /// **'Este e-mail não é válido.'**
  String get thisEmailIsNotValid;

  /// No description provided for @insertValidMessage.
  ///
  /// In pt, this message translates to:
  /// **'Insira uma mensagem válida.'**
  String get insertValidMessage;

  /// No description provided for @insertABiggerMessage.
  ///
  /// In pt, this message translates to:
  /// **'Insira uma mensagem maior.'**
  String get insertABiggerMessage;

  /// No description provided for @thisMessageIsNotValid.
  ///
  /// In pt, this message translates to:
  /// **'Esta mensagem não é válida.'**
  String get thisMessageIsNotValid;

  /// No description provided for @insertValidSubject.
  ///
  /// In pt, this message translates to:
  /// **'Insira um assunto válido.'**
  String get insertValidSubject;

  /// No description provided for @insertABiggerSubject.
  ///
  /// In pt, this message translates to:
  /// **'Insira um assunto maior.'**
  String get insertABiggerSubject;

  /// No description provided for @thisSubjectIsNotValid.
  ///
  /// In pt, this message translates to:
  /// **'Este assunto não é válido.'**
  String get thisSubjectIsNotValid;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'es', 'pt'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'pt':
      return AppLocalizationsPt();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
