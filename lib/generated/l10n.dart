// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Find the nearest parking lot`
  String get onBoardingTitle1 {
    return Intl.message(
      'Find the nearest parking lot',
      name: 'onBoardingTitle1',
      desc: '',
      args: [],
    );
  }

  /// `With Easy Parking, you can easily find the closest garage and get simple directions to arrive`
  String get onBoardingDescription1 {
    return Intl.message(
      'With Easy Parking, you can easily find the closest garage and get simple directions to arrive',
      name: 'onBoardingDescription1',
      desc: '',
      args: [],
    );
  }

  /// `Find the nearest parking lot`
  String get onBoardingTitle2 {
    return Intl.message(
      'Find the nearest parking lot',
      name: 'onBoardingTitle2',
      desc: '',
      args: [],
    );
  }

  /// `With Easy Parking, you can easily find the closest garage and get simple directions to arrive`
  String get onBoardingDescription2 {
    return Intl.message(
      'With Easy Parking, you can easily find the closest garage and get simple directions to arrive',
      name: 'onBoardingDescription2',
      desc: '',
      args: [],
    );
  }

  /// `Find the nearest parking lot`
  String get onBoardingTitle3 {
    return Intl.message(
      'Find the nearest parking lot',
      name: 'onBoardingTitle3',
      desc: '',
      args: [],
    );
  }

  /// `With Easy Parking, you can easily find the closest garage and get simple directions to arrive`
  String get onBoardingDescription3 {
    return Intl.message(
      'With Easy Parking, you can easily find the closest garage and get simple directions to arrive',
      name: 'onBoardingDescription3',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get onBoardingTextButtonText {
    return Intl.message(
      'Skip',
      name: 'onBoardingTextButtonText',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get onBoardingButtonText {
    return Intl.message(
      'Next',
      name: 'onBoardingButtonText',
      desc: '',
      args: [],
    );
  }

  /// `Allow Your Location`
  String get enableLocationTitle {
    return Intl.message(
      'Allow Your Location',
      name: 'enableLocationTitle',
      desc: '',
      args: [],
    );
  }

  /// `Enable Location`
  String get enableLocationButton {
    return Intl.message(
      'Enable Location',
      name: 'enableLocationButton',
      desc: '',
      args: [],
    );
  }

  /// `We will need your location to give you better experience`
  String get enableLocationDescription {
    return Intl.message(
      'We will need your location to give you better experience',
      name: 'enableLocationDescription',
      desc: '',
      args: [],
    );
  }

  /// `Email Address`
  String get loginScreenEmailAddress {
    return Intl.message(
      'Email Address',
      name: 'loginScreenEmailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get loginScreenPassword {
    return Intl.message(
      'Password',
      name: 'loginScreenPassword',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password ?`
  String get loginScreenForgetPassword {
    return Intl.message(
      'Forget Password ?',
      name: 'loginScreenForgetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get loginScreenButton {
    return Intl.message(
      'Login',
      name: 'loginScreenButton',
      desc: '',
      args: [],
    );
  }

  /// `Login With Google`
  String get loginScreenLoginWithGoogleButton {
    return Intl.message(
      'Login With Google',
      name: 'loginScreenLoginWithGoogleButton',
      desc: '',
      args: [],
    );
  }

  /// `Don't worry it happens. Please enter email address associated with your account`
  String get forgetScreenDescription {
    return Intl.message(
      'Don\'t worry it happens. Please enter email address associated with your account',
      name: 'forgetScreenDescription',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get forgetPassButton {
    return Intl.message(
      'Submit',
      name: 'forgetPassButton',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
