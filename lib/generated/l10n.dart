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

  /// `Sign Up`
  String get signUpScreenTitle {
    return Intl.message(
      'Sign Up',
      name: 'signUpScreenTitle',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get signInScreenTitle {
    return Intl.message(
      'Sign in',
      name: 'signInScreenTitle',
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

  /// `Enter OTP`
  String get otpScreenTitle {
    return Intl.message(
      'Enter OTP',
      name: 'otpScreenTitle',
      desc: '',
      args: [],
    );
  }

  /// `An 4 digit has been sent to `
  String get otpScreenDescription {
    return Intl.message(
      'An 4 digit has been sent to ',
      name: 'otpScreenDescription',
      desc: '',
      args: [],
    );
  }

  /// `OTP Code`
  String get otpScreenLabel {
    return Intl.message(
      'OTP Code',
      name: 'otpScreenLabel',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password`
  String get resetPassScreenTitle {
    return Intl.message(
      'Reset Password',
      name: 'resetPassScreenTitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter New Password`
  String get resetPassScreenDescription {
    return Intl.message(
      'Enter New Password',
      name: 'resetPassScreenDescription',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get resetPassScreenLabel {
    return Intl.message(
      'New Password',
      name: 'resetPassScreenLabel',
      desc: '',
      args: [],
    );
  }

  /// `Don't have account ?`
  String get doNotHaveAccount {
    return Intl.message(
      'Don\'t have account ?',
      name: 'doNotHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `create account`
  String get createAccountButton {
    return Intl.message(
      'create account',
      name: 'createAccountButton',
      desc: '',
      args: [],
    );
  }

  /// `username`
  String get registerScreenUserName {
    return Intl.message(
      'username',
      name: 'registerScreenUserName',
      desc: '',
      args: [],
    );
  }

  /// `phone number`
  String get registerScreenUserPhone {
    return Intl.message(
      'phone number',
      name: 'registerScreenUserPhone',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get registerScreenButton {
    return Intl.message(
      'Register',
      name: 'registerScreenButton',
      desc: '',
      args: [],
    );
  }

  /// `Already have account`
  String get registerScreenHaveAccount {
    return Intl.message(
      'Already have account',
      name: 'registerScreenHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profileAppBarTitle {
    return Intl.message(
      'Profile',
      name: 'profileAppBarTitle',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get profileSettings {
    return Intl.message(
      'Settings',
      name: 'profileSettings',
      desc: '',
      args: [],
    );
  }

  /// `Payment`
  String get profilePayment {
    return Intl.message(
      'Payment',
      name: 'profilePayment',
      desc: '',
      args: [],
    );
  }

  /// `Notification`
  String get profileNotification {
    return Intl.message(
      'Notification',
      name: 'profileNotification',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get profileLanguage {
    return Intl.message(
      'Language',
      name: 'profileLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Center Help`
  String get profileCenterHelp {
    return Intl.message(
      'Center Help',
      name: 'profileCenterHelp',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get profileLogout {
    return Intl.message(
      'Logout',
      name: 'profileLogout',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profile`
  String get profileEditProfile {
    return Intl.message(
      'Edit Profile',
      name: 'profileEditProfile',
      desc: '',
      args: [],
    );
  }

  /// `Hello`
  String get vechicleDetailsHello {
    return Intl.message(
      'Hello',
      name: 'vechicleDetailsHello',
      desc: '',
      args: [],
    );
  }

  /// `Let's setup your profile for a better experience`
  String get vechicleDetailsDescription {
    return Intl.message(
      'Let\'s setup your profile for a better experience',
      name: 'vechicleDetailsDescription',
      desc: '',
      args: [],
    );
  }

  /// `Your Vechicle Details`
  String get vechicleDetails {
    return Intl.message(
      'Your Vechicle Details',
      name: 'vechicleDetails',
      desc: '',
      args: [],
    );
  }

  /// `Vechicle Number`
  String get vechicleDetailsNumber {
    return Intl.message(
      'Vechicle Number',
      name: 'vechicleDetailsNumber',
      desc: '',
      args: [],
    );
  }

  /// `Car`
  String get vechicleDetailsCar {
    return Intl.message(
      'Car',
      name: 'vechicleDetailsCar',
      desc: '',
      args: [],
    );
  }

  /// `Moto`
  String get vechicleDetailsMoto {
    return Intl.message(
      'Moto',
      name: 'vechicleDetailsMoto',
      desc: '',
      args: [],
    );
  }

  /// `Van`
  String get vechicleDetailsVan {
    return Intl.message(
      'Van',
      name: 'vechicleDetailsVan',
      desc: '',
      args: [],
    );
  }

  /// `Vechicle Type`
  String get vechicleDetailsType {
    return Intl.message(
      'Vechicle Type',
      name: 'vechicleDetailsType',
      desc: '',
      args: [],
    );
  }

  /// `Garage Details`
  String get garageDetailsTitleAdminInterFace {
    return Intl.message(
      'Garage Details',
      name: 'garageDetailsTitleAdminInterFace',
      desc: '',
      args: [],
    );
  }

  /// `Garage Name`
  String get garageNameAdminInterFace {
    return Intl.message(
      'Garage Name',
      name: 'garageNameAdminInterFace',
      desc: '',
      args: [],
    );
  }

  /// `Number of floors`
  String get NumberOfFloorAdminInterFace {
    return Intl.message(
      'Number of floors',
      name: 'NumberOfFloorAdminInterFace',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get descriptionAdminInterFace {
    return Intl.message(
      'Description',
      name: 'descriptionAdminInterFace',
      desc: '',
      args: [],
    );
  }

  /// `Location`
  String get locationAdminInterFace {
    return Intl.message(
      'Location',
      name: 'locationAdminInterFace',
      desc: '',
      args: [],
    );
  }

  /// `Garage Feature`
  String get garageFeatureAdminInterFace {
    return Intl.message(
      'Garage Feature',
      name: 'garageFeatureAdminInterFace',
      desc: '',
      args: [],
    );
  }

  /// `Upload Some Photo to Your Garage`
  String get garageImagesAdminInterFace {
    return Intl.message(
      'Upload Some Photo to Your Garage',
      name: 'garageImagesAdminInterFace',
      desc: '',
      args: [],
    );
  }

  /// `Latitude`
  String get latitudesAdminInterFace {
    return Intl.message(
      'Latitude',
      name: 'latitudesAdminInterFace',
      desc: '',
      args: [],
    );
  }

  /// `Longitude`
  String get longitudesAdminInterFace {
    return Intl.message(
      'Longitude',
      name: 'longitudesAdminInterFace',
      desc: '',
      args: [],
    );
  }

  /// `Insert`
  String get insert {
    return Intl.message(
      'Insert',
      name: 'insert',
      desc: '',
      args: [],
    );
  }

  /// `Does garage Contain`
  String get doesGarageContain {
    return Intl.message(
      'Does garage Contain',
      name: 'doesGarageContain',
      desc: '',
      args: [],
    );
  }

  /// `Additional features`
  String get garageFeature {
    return Intl.message(
      'Additional features',
      name: 'garageFeature',
      desc: '',
      args: [],
    );
  }

  /// `24/7 support  `
  String get support {
    return Intl.message(
      '24/7 support  ',
      name: 'support',
      desc: '',
      args: [],
    );
  }

  /// `washing car `
  String get washingCar {
    return Intl.message(
      'washing car ',
      name: 'washingCar',
      desc: '',
      args: [],
    );
  }

  /// `Online Payment`
  String get onlinePayment {
    return Intl.message(
      'Online Payment',
      name: 'onlinePayment',
      desc: '',
      args: [],
    );
  }

  /// `security camara `
  String get securityCamara {
    return Intl.message(
      'security camara ',
      name: 'securityCamara',
      desc: '',
      args: [],
    );
  }

  /// `emergency exit `
  String get emergencyExit {
    return Intl.message(
      'emergency exit ',
      name: 'emergencyExit',
      desc: '',
      args: [],
    );
  }

  /// `car lifts ?`
  String get carLifts {
    return Intl.message(
      'car lifts ?',
      name: 'carLifts',
      desc: '',
      args: [],
    );
  }

  /// `city`
  String get city {
    return Intl.message(
      'city',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `government`
  String get government {
    return Intl.message(
      'government',
      name: 'government',
      desc: '',
      args: [],
    );
  }

  /// `garage Added Successfully`
  String get garageAddedSuccessfully {
    return Intl.message(
      'garage Added Successfully',
      name: 'garageAddedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Garages`
  String get garages {
    return Intl.message(
      'Garages',
      name: 'garages',
      desc: '',
      args: [],
    );
  }

  /// `Pick Parking spot `
  String get garagesPlaces {
    return Intl.message(
      'Pick Parking spot ',
      name: 'garagesPlaces',
      desc: '',
      args: [],
    );
  }

  /// `Exit`
  String get exit {
    return Intl.message(
      'Exit',
      name: 'exit',
      desc: '',
      args: [],
    );
  }

  /// `Entry`
  String get enter {
    return Intl.message(
      'Entry',
      name: 'enter',
      desc: '',
      args: [],
    );
  }

  /// `Book Parking Date`
  String get bookingParkingDate {
    return Intl.message(
      'Book Parking Date',
      name: 'bookingParkingDate',
      desc: '',
      args: [],
    );
  }

  /// `Duration`
  String get duration {
    return Intl.message(
      'Duration',
      name: 'duration',
      desc: '',
      args: [],
    );
  }

  /// `Start Hour`
  String get startHour {
    return Intl.message(
      'Start Hour',
      name: 'startHour',
      desc: '',
      args: [],
    );
  }

  /// `End Hour`
  String get endHour {
    return Intl.message(
      'End Hour',
      name: 'endHour',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get total {
    return Intl.message(
      'Total',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continueButton {
    return Intl.message(
      'Continue',
      name: 'continueButton',
      desc: '',
      args: [],
    );
  }

  /// `Start Time`
  String get startTime {
    return Intl.message(
      'Start Time',
      name: 'startTime',
      desc: '',
      args: [],
    );
  }

  /// `End Time`
  String get endTime {
    return Intl.message(
      'End Time',
      name: 'endTime',
      desc: '',
      args: [],
    );
  }

  /// `Parking Details`
  String get parkingDetails {
    return Intl.message(
      'Parking Details',
      name: 'parkingDetails',
      desc: '',
      args: [],
    );
  }

  /// `Square O Park`
  String get parkName {
    return Intl.message(
      'Square O Park',
      name: 'parkName',
      desc: '',
      args: [],
    );
  }

  /// `Service we provide`
  String get serviceProvide {
    return Intl.message(
      'Service we provide',
      name: 'serviceProvide',
      desc: '',
      args: [],
    );
  }

  /// `A garage is a dedicated space typically attached to a residential property or as a standalone structure, designed to provide shelter and storage for vehicles such as cars, motorcycles, and bicycles. It serves as a secure enclosure to protect vehicles from external elements like weather, theft, and vandalism. Garages often feature large doors, commonly overhead, to allow convenient entry and exit for vehicles. Additionally, garages can serve as versatile spaces, offering storage for tools, equipment, and other household items. Many homeowners use garages as workshops or hobby areas, providing a functional and flexible extension of their living space. Overall, a garage plays a crucial role in enhancing the safety, security, and utility of a property.`
  String get garageDescription {
    return Intl.message(
      'A garage is a dedicated space typically attached to a residential property or as a standalone structure, designed to provide shelter and storage for vehicles such as cars, motorcycles, and bicycles. It serves as a secure enclosure to protect vehicles from external elements like weather, theft, and vandalism. Garages often feature large doors, commonly overhead, to allow convenient entry and exit for vehicles. Additionally, garages can serve as versatile spaces, offering storage for tools, equipment, and other household items. Many homeowners use garages as workshops or hobby areas, providing a functional and flexible extension of their living space. Overall, a garage plays a crucial role in enhancing the safety, security, and utility of a property.',
      name: 'garageDescription',
      desc: '',
      args: [],
    );
  }

  /// `Book Now`
  String get bookNow {
    return Intl.message(
      'Book Now',
      name: 'bookNow',
      desc: '',
      args: [],
    );
  }

  /// `Review Summary`
  String get reviewSummary {
    return Intl.message(
      'Review Summary',
      name: 'reviewSummary',
      desc: '',
      args: [],
    );
  }

  /// `Parking Area`
  String get parkingArea {
    return Intl.message(
      'Parking Area',
      name: 'parkingArea',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Parking Spot`
  String get parkingSpot {
    return Intl.message(
      'Parking Spot',
      name: 'parkingSpot',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get date {
    return Intl.message(
      'Date',
      name: 'date',
      desc: '',
      args: [],
    );
  }

  /// `Hour`
  String get hour {
    return Intl.message(
      'Hour',
      name: 'hour',
      desc: '',
      args: [],
    );
  }

  /// `Amount`
  String get amount {
    return Intl.message(
      'Amount',
      name: 'amount',
      desc: '',
      args: [],
    );
  }

  /// `Tax( 10% )`
  String get tax {
    return Intl.message(
      'Tax( 10% )',
      name: 'tax',
      desc: '',
      args: [],
    );
  }

  /// `Proceed`
  String get proceed {
    return Intl.message(
      'Proceed',
      name: 'proceed',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Book Mark`
  String get bookMark {
    return Intl.message(
      'Book Mark',
      name: 'bookMark',
      desc: '',
      args: [],
    );
  }

  /// `Saved`
  String get saved {
    return Intl.message(
      'Saved',
      name: 'saved',
      desc: '',
      args: [],
    );
  }

  /// `My Bookmark`
  String get myBookMark {
    return Intl.message(
      'My Bookmark',
      name: 'myBookMark',
      desc: '',
      args: [],
    );
  }

  /// `View Ticket`
  String get viewTicket {
    return Intl.message(
      'View Ticket',
      name: 'viewTicket',
      desc: '',
      args: [],
    );
  }

  /// `Choose Pay Method`
  String get choosePayment {
    return Intl.message(
      'Choose Pay Method',
      name: 'choosePayment',
      desc: '',
      args: [],
    );
  }

  /// `you can choose the most suitable \npayment method for payment`
  String get walletDesc {
    return Intl.message(
      'you can choose the most suitable \npayment method for payment',
      name: 'walletDesc',
      desc: '',
      args: [],
    );
  }

  /// `Vodafone cash`
  String get vodafone {
    return Intl.message(
      'Vodafone cash',
      name: 'vodafone',
      desc: '',
      args: [],
    );
  }

  /// `Cash`
  String get cash {
    return Intl.message(
      'Cash',
      name: 'cash',
      desc: '',
      args: [],
    );
  }

  /// `Visa`
  String get visa {
    return Intl.message(
      'Visa',
      name: 'visa',
      desc: '',
      args: [],
    );
  }

  /// `Parking Ticket`
  String get parkingTicket {
    return Intl.message(
      'Parking Ticket',
      name: 'parkingTicket',
      desc: '',
      args: [],
    );
  }

  /// `Scan this on the QR code\nwhen you are in this parking lot`
  String get scanCode {
    return Intl.message(
      'Scan this on the QR code\nwhen you are in this parking lot',
      name: 'scanCode',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Vechicle`
  String get vechicle {
    return Intl.message(
      'Vechicle',
      name: 'vechicle',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phone {
    return Intl.message(
      'Phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Navigate to parking lot`
  String get navigateToParkingLot {
    return Intl.message(
      'Navigate to parking lot',
      name: 'navigateToParkingLot',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get ok {
    return Intl.message(
      'OK',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Parking Timer`
  String get parkingTimer {
    return Intl.message(
      'Parking Timer',
      name: 'parkingTimer',
      desc: '',
      args: [],
    );
  }

  /// `Extend Parking Time`
  String get extendParkingTime {
    return Intl.message(
      'Extend Parking Time',
      name: 'extendParkingTime',
      desc: '',
      args: [],
    );
  }

  /// `Help & Support`
  String get help {
    return Intl.message(
      'Help & Support',
      name: 'help',
      desc: '',
      args: [],
    );
  }

  /// `FAQ`
  String get centerHelpSupport {
    return Intl.message(
      'FAQ',
      name: 'centerHelpSupport',
      desc: '',
      args: [],
    );
  }

  /// `Contact Us`
  String get contact {
    return Intl.message(
      'Contact Us',
      name: 'contact',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get send {
    return Intl.message(
      'Send',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `Facebook`
  String get facebook {
    return Intl.message(
      'Facebook',
      name: 'facebook',
      desc: '',
      args: [],
    );
  }

  /// `Twitter`
  String get twitter {
    return Intl.message(
      'Twitter',
      name: 'twitter',
      desc: '',
      args: [],
    );
  }

  /// `Instagram`
  String get instagram {
    return Intl.message(
      'Instagram',
      name: 'instagram',
      desc: '',
      args: [],
    );
  }

  /// `About Us`
  String get about {
    return Intl.message(
      'About Us',
      name: 'about',
      desc: '',
      args: [],
    );
  }

  /// `LinkedIn`
  String get linkedIn {
    return Intl.message(
      'LinkedIn',
      name: 'linkedIn',
      desc: '',
      args: [],
    );
  }

  /// `Gmail`
  String get gmail {
    return Intl.message(
      'Gmail',
      name: 'gmail',
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
