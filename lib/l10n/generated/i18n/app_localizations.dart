import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';
import 'app_localizations_ku.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'i18n/app_localizations.dart';
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
    Locale('ar'),
    Locale('en'),
    Locale('ku')
  ];

  /// No description provided for @moja.
  ///
  /// In en, this message translates to:
  /// **'Moja'**
  String get moja;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get language;

  /// No description provided for @dashboard.
  ///
  /// In en, this message translates to:
  /// **'Dashboard'**
  String get dashboard;

  /// No description provided for @messages.
  ///
  /// In en, this message translates to:
  /// **'Messages'**
  String get messages;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @secure_authentication.
  ///
  /// In en, this message translates to:
  /// **'Secure Authentication'**
  String get secure_authentication;

  /// No description provided for @protect_your_account_with_ease.
  ///
  /// In en, this message translates to:
  /// **'Protect your account with ease'**
  String get protect_your_account_with_ease;

  /// No description provided for @explore_a_variety_of_security_features.
  ///
  /// In en, this message translates to:
  /// **'Explore a variety of security features'**
  String get explore_a_variety_of_security_features;

  /// No description provided for @just_now.
  ///
  /// In en, this message translates to:
  /// **'Just now'**
  String get just_now;

  /// No description provided for @years.
  ///
  /// In en, this message translates to:
  /// **'years'**
  String get years;

  /// No description provided for @year.
  ///
  /// In en, this message translates to:
  /// **'year'**
  String get year;

  /// No description provided for @months.
  ///
  /// In en, this message translates to:
  /// **'months'**
  String get months;

  /// No description provided for @month.
  ///
  /// In en, this message translates to:
  /// **'month'**
  String get month;

  /// No description provided for @weeks.
  ///
  /// In en, this message translates to:
  /// **'weeks'**
  String get weeks;

  /// No description provided for @week.
  ///
  /// In en, this message translates to:
  /// **'week'**
  String get week;

  /// No description provided for @days.
  ///
  /// In en, this message translates to:
  /// **'days'**
  String get days;

  /// No description provided for @day.
  ///
  /// In en, this message translates to:
  /// **'day'**
  String get day;

  /// No description provided for @hours.
  ///
  /// In en, this message translates to:
  /// **'hours'**
  String get hours;

  /// No description provided for @hour.
  ///
  /// In en, this message translates to:
  /// **'hour'**
  String get hour;

  /// No description provided for @minutes.
  ///
  /// In en, this message translates to:
  /// **'minutes'**
  String get minutes;

  /// No description provided for @minute.
  ///
  /// In en, this message translates to:
  /// **'minute'**
  String get minute;

  /// No description provided for @seconds.
  ///
  /// In en, this message translates to:
  /// **'Seconds'**
  String get seconds;

  /// No description provided for @second.
  ///
  /// In en, this message translates to:
  /// **'Second'**
  String get second;

  /// No description provided for @ago.
  ///
  /// In en, this message translates to:
  /// **'ago'**
  String get ago;

  /// No description provided for @something_went_wrong.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong'**
  String get something_went_wrong;

  /// No description provided for @y.
  ///
  /// In en, this message translates to:
  /// **'y'**
  String get y;

  /// No description provided for @m.
  ///
  /// In en, this message translates to:
  /// **'m'**
  String get m;

  /// No description provided for @w.
  ///
  /// In en, this message translates to:
  /// **'w'**
  String get w;

  /// No description provided for @d.
  ///
  /// In en, this message translates to:
  /// **'d'**
  String get d;

  /// No description provided for @h.
  ///
  /// In en, this message translates to:
  /// **'h'**
  String get h;

  /// No description provided for @min.
  ///
  /// In en, this message translates to:
  /// **'min'**
  String get min;

  /// No description provided for @s.
  ///
  /// In en, this message translates to:
  /// **'s'**
  String get s;

  /// No description provided for @get_started.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get get_started;

  /// No description provided for @phone_number_cannot_be_empty.
  ///
  /// In en, this message translates to:
  /// **'Phone number cannot be empty'**
  String get phone_number_cannot_be_empty;

  /// No description provided for @enter_phone_number.
  ///
  /// In en, this message translates to:
  /// **'Enter phone number'**
  String get enter_phone_number;

  /// No description provided for @phone_number_must_be.
  ///
  /// In en, this message translates to:
  /// **'Phone number must be'**
  String get phone_number_must_be;

  /// No description provided for @characters.
  ///
  /// In en, this message translates to:
  /// **'characters'**
  String get characters;

  /// No description provided for @welcome_to_moja.
  ///
  /// In en, this message translates to:
  /// **'Welcome to Moja'**
  String get welcome_to_moja;

  /// No description provided for @we_are_happy_to_have_you_back_here.
  ///
  /// In en, this message translates to:
  /// **'We are happy to have you back here'**
  String get we_are_happy_to_have_you_back_here;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @sign_in.
  ///
  /// In en, this message translates to:
  /// **'Sign in'**
  String get sign_in;

  /// No description provided for @new_to_moja.
  ///
  /// In en, this message translates to:
  /// **'New to Moja?'**
  String get new_to_moja;

  /// No description provided for @register.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get register;

  /// No description provided for @sign_in_with_apple.
  ///
  /// In en, this message translates to:
  /// **'Sign in with Apple'**
  String get sign_in_with_apple;

  /// No description provided for @sign_in_with_google.
  ///
  /// In en, this message translates to:
  /// **'Sign in with Google'**
  String get sign_in_with_google;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @verify.
  ///
  /// In en, this message translates to:
  /// **'Verify'**
  String get verify;

  /// No description provided for @did_not_receive_the_code.
  ///
  /// In en, this message translates to:
  /// **'Didnt receive the code?'**
  String get did_not_receive_the_code;

  /// No description provided for @resend_code_in.
  ///
  /// In en, this message translates to:
  /// **'Resend code in'**
  String get resend_code_in;

  /// No description provided for @we_have_sent_a_code_for.
  ///
  /// In en, this message translates to:
  /// **'We have sent a code for'**
  String get we_have_sent_a_code_for;

  /// No description provided for @verify_phone_number.
  ///
  /// In en, this message translates to:
  /// **'Verify phone number'**
  String get verify_phone_number;

  /// No description provided for @resend_code.
  ///
  /// In en, this message translates to:
  /// **'Resend code'**
  String get resend_code;

  /// No description provided for @confirm_password.
  ///
  /// In en, this message translates to:
  /// **'Confirm password'**
  String get confirm_password;

  /// No description provided for @create_a_password.
  ///
  /// In en, this message translates to:
  /// **'Create a password'**
  String get create_a_password;

  /// No description provided for @continue_txt.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continue_txt;

  /// No description provided for @please_enter_a_password.
  ///
  /// In en, this message translates to:
  /// **'Please enter a password'**
  String get please_enter_a_password;

  /// No description provided for @password_must_be_at_least_8_characters_long.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 8 characters long'**
  String get password_must_be_at_least_8_characters_long;

  /// No description provided for @password_must_contain_at_least_one_uppercase_letter.
  ///
  /// In en, this message translates to:
  /// **'Password must contain at least one uppercase letter'**
  String get password_must_contain_at_least_one_uppercase_letter;

  /// No description provided for @password_must_contain_at_least_one_lowercase_letter.
  ///
  /// In en, this message translates to:
  /// **'Password must contain at least one lowercase letter'**
  String get password_must_contain_at_least_one_lowercase_letter;

  /// No description provided for @password_must_contain_at_least_one_number.
  ///
  /// In en, this message translates to:
  /// **'Password must contain at least one number'**
  String get password_must_contain_at_least_one_number;

  /// No description provided for @password_must_contain_at_least_one_special_character.
  ///
  /// In en, this message translates to:
  /// **'Password must contain at least one special character'**
  String get password_must_contain_at_least_one_special_character;

  /// No description provided for @setup_you_profile.
  ///
  /// In en, this message translates to:
  /// **'Setup your profile'**
  String get setup_you_profile;

  /// No description provided for @please_provide_your_name_and_email.
  ///
  /// In en, this message translates to:
  /// **'Please provide your name and email'**
  String get please_provide_your_name_and_email;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @full_name.
  ///
  /// In en, this message translates to:
  /// **'Full name'**
  String get full_name;

  /// No description provided for @enable_location.
  ///
  /// In en, this message translates to:
  /// **'Enable location'**
  String get enable_location;

  /// No description provided for @you_will_need_to_enable_location_in_order_to_use_moja.
  ///
  /// In en, this message translates to:
  /// **'You will need to enable location\nin order to use MOJA'**
  String get you_will_need_to_enable_location_in_order_to_use_moja;

  /// No description provided for @allow.
  ///
  /// In en, this message translates to:
  /// **'Allow'**
  String get allow;

  /// No description provided for @finish.
  ///
  /// In en, this message translates to:
  /// **'Finish'**
  String get finish;

  /// No description provided for @you_are_ready_to_start_using_moja.
  ///
  /// In en, this message translates to:
  /// **'You are ready to start using MOJA'**
  String get you_are_ready_to_start_using_moja;

  /// No description provided for @all_done.
  ///
  /// In en, this message translates to:
  /// **'All done'**
  String get all_done;

  /// No description provided for @channels.
  ///
  /// In en, this message translates to:
  /// **'Channels'**
  String get channels;

  /// No description provided for @rewards.
  ///
  /// In en, this message translates to:
  /// **'Rewards'**
  String get rewards;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @copy.
  ///
  /// In en, this message translates to:
  /// **'Copy'**
  String get copy;

  /// No description provided for @copied_to_clipboard.
  ///
  /// In en, this message translates to:
  /// **'Copied to clipboard'**
  String get copied_to_clipboard;

  /// No description provided for @copied.
  ///
  /// In en, this message translates to:
  /// **'Copied'**
  String get copied;

  /// No description provided for @no_messages_found.
  ///
  /// In en, this message translates to:
  /// **'No messages found'**
  String get no_messages_found;

  /// No description provided for @about_us.
  ///
  /// In en, this message translates to:
  /// **'About MOJA'**
  String get about_us;

  /// No description provided for @invite_friends.
  ///
  /// In en, this message translates to:
  /// **'Invite friends'**
  String get invite_friends;

  /// No description provided for @connected_accounts.
  ///
  /// In en, this message translates to:
  /// **'Connected accounts'**
  String get connected_accounts;

  /// No description provided for @my_numbers.
  ///
  /// In en, this message translates to:
  /// **'My numbers'**
  String get my_numbers;

  /// No description provided for @delete_account.
  ///
  /// In en, this message translates to:
  /// **'Delete account'**
  String get delete_account;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @kurdish.
  ///
  /// In en, this message translates to:
  /// **'کوردی'**
  String get kurdish;

  /// No description provided for @arabic.
  ///
  /// In en, this message translates to:
  /// **'عربی'**
  String get arabic;

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @storage_and_data.
  ///
  /// In en, this message translates to:
  /// **'Storage and data'**
  String get storage_and_data;

  /// No description provided for @help.
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get help;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @points.
  ///
  /// In en, this message translates to:
  /// **'points'**
  String get points;

  /// No description provided for @security.
  ///
  /// In en, this message translates to:
  /// **'Security'**
  String get security;

  /// No description provided for @discover_channels.
  ///
  /// In en, this message translates to:
  /// **'Discover channels'**
  String get discover_channels;

  /// No description provided for @followed_channels.
  ///
  /// In en, this message translates to:
  /// **'Followed channels'**
  String get followed_channels;

  /// No description provided for @follow.
  ///
  /// In en, this message translates to:
  /// **'Follow'**
  String get follow;

  /// No description provided for @following.
  ///
  /// In en, this message translates to:
  /// **'Following'**
  String get following;

  /// No description provided for @search_rewards.
  ///
  /// In en, this message translates to:
  /// **'Search rewards'**
  String get search_rewards;

  /// No description provided for @free.
  ///
  /// In en, this message translates to:
  /// **'Free'**
  String get free;

  /// No description provided for @two_step_verification.
  ///
  /// In en, this message translates to:
  /// **'Two-step verification'**
  String get two_step_verification;

  /// No description provided for @change_number.
  ///
  /// In en, this message translates to:
  /// **'Change number'**
  String get change_number;

  /// No description provided for @otp_auto_fill.
  ///
  /// In en, this message translates to:
  /// **'OTP auto-fill'**
  String get otp_auto_fill;

  /// No description provided for @allow_login_from_other_devices.
  ///
  /// In en, this message translates to:
  /// **'Allow login from other devices'**
  String get allow_login_from_other_devices;

  /// No description provided for @general.
  ///
  /// In en, this message translates to:
  /// **'General'**
  String get general;

  /// No description provided for @promotional.
  ///
  /// In en, this message translates to:
  /// **'Promotional'**
  String get promotional;

  /// No description provided for @password_change.
  ///
  /// In en, this message translates to:
  /// **'Password Change'**
  String get password_change;

  /// No description provided for @new_features.
  ///
  /// In en, this message translates to:
  /// **'New Features'**
  String get new_features;

  /// No description provided for @special_offers.
  ///
  /// In en, this message translates to:
  /// **'Special Offers'**
  String get special_offers;

  /// No description provided for @vibrations.
  ///
  /// In en, this message translates to:
  /// **'Vibrations'**
  String get vibrations;

  /// No description provided for @notification_tone.
  ///
  /// In en, this message translates to:
  /// **'Notification Tone'**
  String get notification_tone;

  /// No description provided for @news_and_announcements.
  ///
  /// In en, this message translates to:
  /// **'News and Announcements'**
  String get news_and_announcements;

  /// No description provided for @login_alerts.
  ///
  /// In en, this message translates to:
  /// **'Login Alerts'**
  String get login_alerts;

  /// No description provided for @receive_app_updates.
  ///
  /// In en, this message translates to:
  /// **'Receive app updates'**
  String get receive_app_updates;

  /// No description provided for @email_backup.
  ///
  /// In en, this message translates to:
  /// **'Email backup'**
  String get email_backup;

  /// No description provided for @last_backup.
  ///
  /// In en, this message translates to:
  /// **'Last backup'**
  String get last_backup;

  /// No description provided for @backup_size.
  ///
  /// In en, this message translates to:
  /// **'Backup size'**
  String get backup_size;

  /// No description provided for @backup_email.
  ///
  /// In en, this message translates to:
  /// **'Backup email'**
  String get backup_email;

  /// No description provided for @data_sent.
  ///
  /// In en, this message translates to:
  /// **'Data sent'**
  String get data_sent;

  /// No description provided for @data_received.
  ///
  /// In en, this message translates to:
  /// **'Data received'**
  String get data_received;

  /// No description provided for @network_usage.
  ///
  /// In en, this message translates to:
  /// **'Network usage'**
  String get network_usage;

  /// No description provided for @app_and_languages.
  ///
  /// In en, this message translates to:
  /// **'App and languages'**
  String get app_and_languages;

  /// No description provided for @theme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// No description provided for @choose_a_language.
  ///
  /// In en, this message translates to:
  /// **'Choose a language'**
  String get choose_a_language;

  /// No description provided for @search_for_language.
  ///
  /// In en, this message translates to:
  /// **'Search for language'**
  String get search_for_language;

  /// No description provided for @current_language.
  ///
  /// In en, this message translates to:
  /// **'Current language'**
  String get current_language;

  /// No description provided for @other_languages.
  ///
  /// In en, this message translates to:
  /// **'Other languages'**
  String get other_languages;

  /// No description provided for @system_default.
  ///
  /// In en, this message translates to:
  /// **'System default'**
  String get system_default;

  /// No description provided for @light.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get light;

  /// No description provided for @dark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get dark;

  /// No description provided for @choose_a_theme.
  ///
  /// In en, this message translates to:
  /// **'Choose a theme'**
  String get choose_a_theme;

  /// No description provided for @edit_profile.
  ///
  /// In en, this message translates to:
  /// **'Edit profile'**
  String get edit_profile;

  /// No description provided for @delete_image.
  ///
  /// In en, this message translates to:
  /// **'Delete image'**
  String get delete_image;

  /// No description provided for @choose_from_gallery.
  ///
  /// In en, this message translates to:
  /// **'Choose from gallery'**
  String get choose_from_gallery;

  /// No description provided for @change_picture.
  ///
  /// In en, this message translates to:
  /// **'Change picture'**
  String get change_picture;

  /// No description provided for @username.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get username;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @discard.
  ///
  /// In en, this message translates to:
  /// **'Discard'**
  String get discard;

  /// No description provided for @gender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get gender;

  /// No description provided for @date_of_birth.
  ///
  /// In en, this message translates to:
  /// **'Date of birth'**
  String get date_of_birth;

  /// No description provided for @male.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get male;

  /// No description provided for @female.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get female;

  /// No description provided for @other.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get other;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @email_is_required.
  ///
  /// In en, this message translates to:
  /// **'Email is required'**
  String get email_is_required;

  /// No description provided for @email_is_invalid.
  ///
  /// In en, this message translates to:
  /// **'Email is invalid'**
  String get email_is_invalid;

  /// No description provided for @username_is_required.
  ///
  /// In en, this message translates to:
  /// **'Username is required'**
  String get username_is_required;

  /// No description provided for @full_name_is_required.
  ///
  /// In en, this message translates to:
  /// **'Full name is required'**
  String get full_name_is_required;

  /// No description provided for @full_name_should_be_at_least_two_words.
  ///
  /// In en, this message translates to:
  /// **'Full name should be at least two words'**
  String get full_name_should_be_at_least_two_words;

  /// No description provided for @full_name_should_be_at_least_three_characters.
  ///
  /// In en, this message translates to:
  /// **'Full name should be at least three characters'**
  String get full_name_should_be_at_least_three_characters;

  /// No description provided for @date_of_birth_is_required.
  ///
  /// In en, this message translates to:
  /// **'Date of birth is required'**
  String get date_of_birth_is_required;

  /// No description provided for @gender_is_required.
  ///
  /// In en, this message translates to:
  /// **'Gender is required'**
  String get gender_is_required;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @delete_confirmation_description.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this?'**
  String get delete_confirmation_description;

  /// No description provided for @delete_confirmation_title.
  ///
  /// In en, this message translates to:
  /// **'Delete confirmation'**
  String get delete_confirmation_title;

  /// No description provided for @image_confirmation.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this image?'**
  String get image_confirmation;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @today.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today;

  /// No description provided for @yesterday.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday;

  /// No description provided for @you_dont_have_any_notifications.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have any notifications'**
  String get you_dont_have_any_notifications;

  /// No description provided for @filter_date.
  ///
  /// In en, this message translates to:
  /// **'Filter date'**
  String get filter_date;

  /// No description provided for @reset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get reset;

  /// No description provided for @submit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submit;

  /// No description provided for @followers.
  ///
  /// In en, this message translates to:
  /// **'followers'**
  String get followers;

  /// No description provided for @account_id.
  ///
  /// In en, this message translates to:
  /// **'Account ID'**
  String get account_id;

  /// No description provided for @all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get all;

  /// No description provided for @invite_a_friend.
  ///
  /// In en, this message translates to:
  /// **'Invite a friend'**
  String get invite_a_friend;

  /// No description provided for @invite_your_friends.
  ///
  /// In en, this message translates to:
  /// **'Invite your friends'**
  String get invite_your_friends;

  /// No description provided for @invite_your_friends_description.
  ///
  /// In en, this message translates to:
  /// **'Enter your friend\'s phone number and a message to send them an invite to join Moja.'**
  String get invite_your_friends_description;

  /// No description provided for @copy_link.
  ///
  /// In en, this message translates to:
  /// **'Copy link'**
  String get copy_link;

  /// No description provided for @your_message.
  ///
  /// In en, this message translates to:
  /// **'Your message'**
  String get your_message;

  /// No description provided for @select_from_contacts_list.
  ///
  /// In en, this message translates to:
  /// **'Select from contacts list'**
  String get select_from_contacts_list;

  /// No description provided for @search_for_contacts.
  ///
  /// In en, this message translates to:
  /// **'Search for contacts'**
  String get search_for_contacts;

  /// No description provided for @unknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get unknown;

  /// No description provided for @the_moja_story.
  ///
  /// In en, this message translates to:
  /// **'The Moja Story'**
  String get the_moja_story;

  /// No description provided for @moja_story_description.
  ///
  /// In en, this message translates to:
  /// **'Moja is a social network that allows you to connect with your friends and family. It is a platform that allows you to share your thoughts, ideas, and experiences with others.'**
  String get moja_story_description;

  /// No description provided for @easy_sign_up.
  ///
  /// In en, this message translates to:
  /// **'Easy sign up'**
  String get easy_sign_up;

  /// No description provided for @advanced_security.
  ///
  /// In en, this message translates to:
  /// **'Advanced security'**
  String get advanced_security;

  /// No description provided for @user_friendly_interface.
  ///
  /// In en, this message translates to:
  /// **'User-friendly interface'**
  String get user_friendly_interface;

  /// No description provided for @features.
  ///
  /// In en, this message translates to:
  /// **'Features'**
  String get features;

  /// No description provided for @privacy_policy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacy_policy;

  /// No description provided for @faq.
  ///
  /// In en, this message translates to:
  /// **'FAQs'**
  String get faq;

  /// No description provided for @terms_of_service.
  ///
  /// In en, this message translates to:
  /// **'Terms of Service'**
  String get terms_of_service;

  /// No description provided for @logout_description.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to logout?'**
  String get logout_description;

  /// No description provided for @we_are_here_to_help_you.
  ///
  /// In en, this message translates to:
  /// **'We are here to help you'**
  String get we_are_here_to_help_you;

  /// No description provided for @are_you_sure_you_want_to_delete_your_account.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete your account?'**
  String get are_you_sure_you_want_to_delete_your_account;

  /// No description provided for @if_you_delete_this_account.
  ///
  /// In en, this message translates to:
  /// **'If you delete this account:'**
  String get if_you_delete_this_account;

  /// No description provided for @you_backup_storage_will_be_deleted.
  ///
  /// In en, this message translates to:
  /// **'Your backup storage will be deleted'**
  String get you_backup_storage_will_be_deleted;

  /// No description provided for @this_account_will_be_deleted_from_moja.
  ///
  /// In en, this message translates to:
  /// **'This account will be deleted from Moja'**
  String get this_account_will_be_deleted_from_moja;

  /// No description provided for @all_you_data_will_be_deleted.
  ///
  /// In en, this message translates to:
  /// **'All your data will be deleted'**
  String get all_you_data_will_be_deleted;

  /// No description provided for @change_number_instead.
  ///
  /// In en, this message translates to:
  /// **'Change number instead'**
  String get change_number_instead;

  /// No description provided for @confirm_you_phone_number_to_proceed_the_deletion_processes.
  ///
  /// In en, this message translates to:
  /// **'Confirm your phone number to proceed the deletion processes'**
  String get confirm_you_phone_number_to_proceed_the_deletion_processes;

  /// No description provided for @you_do_not_have_any_connected_accounts_yet.
  ///
  /// In en, this message translates to:
  /// **'You do not have any connected accounts yet'**
  String get you_do_not_have_any_connected_accounts_yet;

  /// No description provided for @linked_just_now.
  ///
  /// In en, this message translates to:
  /// **'Linked just now'**
  String get linked_just_now;

  /// No description provided for @linked_x_minutes_ago.
  ///
  /// In en, this message translates to:
  /// **'Linked xx minutes ago'**
  String get linked_x_minutes_ago;

  /// No description provided for @linked_x_hours_ago.
  ///
  /// In en, this message translates to:
  /// **'Linked xx hours ago'**
  String get linked_x_hours_ago;

  /// No description provided for @linked_x_days_ago.
  ///
  /// In en, this message translates to:
  /// **'Linked xx days ago'**
  String get linked_x_days_ago;

  /// No description provided for @linked_x_months_ago.
  ///
  /// In en, this message translates to:
  /// **'Linked xx months ago'**
  String get linked_x_months_ago;

  /// No description provided for @linked_since_x.
  ///
  /// In en, this message translates to:
  /// **'Linked since xx'**
  String get linked_since_x;

  /// No description provided for @unlink.
  ///
  /// In en, this message translates to:
  /// **'Unlink'**
  String get unlink;

  /// No description provided for @are_you_sure_you_want_to_unlink_this_account_description.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to unlink this account?\nbecause once you unlink this account,\nyou will not be able to login by this\nlinked account anymore.'**
  String get are_you_sure_you_want_to_unlink_this_account_description;

  /// No description provided for @delete_phone_number.
  ///
  /// In en, this message translates to:
  /// **'Delete phone number'**
  String get delete_phone_number;

  /// No description provided for @delete_number_description.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this number?'**
  String get delete_number_description;

  /// No description provided for @otp.
  ///
  /// In en, this message translates to:
  /// **'OTP'**
  String get otp;

  /// No description provided for @change_your_phone_number.
  ///
  /// In en, this message translates to:
  /// **'Change your phone number'**
  String get change_your_phone_number;

  /// No description provided for @new_number.
  ///
  /// In en, this message translates to:
  /// **'New number'**
  String get new_number;

  /// No description provided for @protect_your_accounts_with_ease.
  ///
  /// In en, this message translates to:
  /// **'Protect your accounts with ease'**
  String get protect_your_accounts_with_ease;

  /// No description provided for @login_success.
  ///
  /// In en, this message translates to:
  /// **'Login success'**
  String get login_success;

  /// No description provided for @unread.
  ///
  /// In en, this message translates to:
  /// **'Unread'**
  String get unread;

  /// No description provided for @favorites.
  ///
  /// In en, this message translates to:
  /// **'Favorites'**
  String get favorites;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @expired.
  ///
  /// In en, this message translates to:
  /// **'Expired'**
  String get expired;

  /// No description provided for @sign_out.
  ///
  /// In en, this message translates to:
  /// **'Sign out'**
  String get sign_out;

  /// No description provided for @overview.
  ///
  /// In en, this message translates to:
  /// **'Overview'**
  String get overview;

  /// No description provided for @tickets.
  ///
  /// In en, this message translates to:
  /// **'Tickets'**
  String get tickets;

  /// No description provided for @revenue_and_billing.
  ///
  /// In en, this message translates to:
  /// **'Revenue and Billing'**
  String get revenue_and_billing;

  /// No description provided for @businesses.
  ///
  /// In en, this message translates to:
  /// **'Businesses'**
  String get businesses;

  /// No description provided for @employees.
  ///
  /// In en, this message translates to:
  /// **'Employees'**
  String get employees;

  /// No description provided for @users.
  ///
  /// In en, this message translates to:
  /// **'Users'**
  String get users;

  /// No description provided for @access_privileges.
  ///
  /// In en, this message translates to:
  /// **'Access Privileges'**
  String get access_privileges;

  /// No description provided for @operations.
  ///
  /// In en, this message translates to:
  /// **'Operations'**
  String get operations;

  /// No description provided for @management.
  ///
  /// In en, this message translates to:
  /// **'Management'**
  String get management;

  /// No description provided for @yearly.
  ///
  /// In en, this message translates to:
  /// **'Yearly'**
  String get yearly;

  /// No description provided for @monthly.
  ///
  /// In en, this message translates to:
  /// **'Monthly'**
  String get monthly;

  /// No description provided for @weekly.
  ///
  /// In en, this message translates to:
  /// **'Weekly'**
  String get weekly;

  /// No description provided for @daily.
  ///
  /// In en, this message translates to:
  /// **'Daily'**
  String get daily;

  /// No description provided for @revenue.
  ///
  /// In en, this message translates to:
  /// **'Revenue'**
  String get revenue;

  /// No description provided for @active_users.
  ///
  /// In en, this message translates to:
  /// **'Active Users'**
  String get active_users;

  /// No description provided for @active_businesses.
  ///
  /// In en, this message translates to:
  /// **'Active Businesses'**
  String get active_businesses;

  /// No description provided for @app_downloads.
  ///
  /// In en, this message translates to:
  /// **'App Downloads'**
  String get app_downloads;

  /// No description provided for @january.
  ///
  /// In en, this message translates to:
  /// **'January'**
  String get january;

  /// No description provided for @february.
  ///
  /// In en, this message translates to:
  /// **'February'**
  String get february;

  /// No description provided for @march.
  ///
  /// In en, this message translates to:
  /// **'March'**
  String get march;

  /// No description provided for @april.
  ///
  /// In en, this message translates to:
  /// **'April'**
  String get april;

  /// No description provided for @may.
  ///
  /// In en, this message translates to:
  /// **'May'**
  String get may;

  /// No description provided for @june.
  ///
  /// In en, this message translates to:
  /// **'June'**
  String get june;

  /// No description provided for @july.
  ///
  /// In en, this message translates to:
  /// **'July'**
  String get july;

  /// No description provided for @august.
  ///
  /// In en, this message translates to:
  /// **'August'**
  String get august;

  /// No description provided for @september.
  ///
  /// In en, this message translates to:
  /// **'September'**
  String get september;

  /// No description provided for @october.
  ///
  /// In en, this message translates to:
  /// **'October'**
  String get october;

  /// No description provided for @november.
  ///
  /// In en, this message translates to:
  /// **'November'**
  String get november;

  /// No description provided for @december.
  ///
  /// In en, this message translates to:
  /// **'December'**
  String get december;

  /// No description provided for @jan.
  ///
  /// In en, this message translates to:
  /// **'Jan'**
  String get jan;

  /// No description provided for @feb.
  ///
  /// In en, this message translates to:
  /// **'Feb'**
  String get feb;

  /// No description provided for @mar.
  ///
  /// In en, this message translates to:
  /// **'Mar'**
  String get mar;

  /// No description provided for @apr.
  ///
  /// In en, this message translates to:
  /// **'Apr'**
  String get apr;

  /// No description provided for @jun.
  ///
  /// In en, this message translates to:
  /// **'Jun'**
  String get jun;

  /// No description provided for @jul.
  ///
  /// In en, this message translates to:
  /// **'Jul'**
  String get jul;

  /// No description provided for @aug.
  ///
  /// In en, this message translates to:
  /// **'Aug'**
  String get aug;

  /// No description provided for @sep.
  ///
  /// In en, this message translates to:
  /// **'Sep'**
  String get sep;

  /// No description provided for @oct.
  ///
  /// In en, this message translates to:
  /// **'Oct'**
  String get oct;

  /// No description provided for @nov.
  ///
  /// In en, this message translates to:
  /// **'Nov'**
  String get nov;

  /// No description provided for @dec.
  ///
  /// In en, this message translates to:
  /// **'Dec'**
  String get dec;

  /// No description provided for @saturday.
  ///
  /// In en, this message translates to:
  /// **'Saturday'**
  String get saturday;

  /// No description provided for @sunday.
  ///
  /// In en, this message translates to:
  /// **'Sunday'**
  String get sunday;

  /// No description provided for @monday.
  ///
  /// In en, this message translates to:
  /// **'Monday'**
  String get monday;

  /// No description provided for @tuesday.
  ///
  /// In en, this message translates to:
  /// **'Tuesday'**
  String get tuesday;

  /// No description provided for @wednesday.
  ///
  /// In en, this message translates to:
  /// **'Wednesday'**
  String get wednesday;

  /// No description provided for @thursday.
  ///
  /// In en, this message translates to:
  /// **'Thursday'**
  String get thursday;

  /// No description provided for @friday.
  ///
  /// In en, this message translates to:
  /// **'Friday'**
  String get friday;

  /// No description provided for @mon.
  ///
  /// In en, this message translates to:
  /// **'Mon'**
  String get mon;

  /// No description provided for @tue.
  ///
  /// In en, this message translates to:
  /// **'Tue'**
  String get tue;

  /// No description provided for @wed.
  ///
  /// In en, this message translates to:
  /// **'Wed'**
  String get wed;

  /// No description provided for @thu.
  ///
  /// In en, this message translates to:
  /// **'Thu'**
  String get thu;

  /// No description provided for @fri.
  ///
  /// In en, this message translates to:
  /// **'Fri'**
  String get fri;

  /// No description provided for @sat.
  ///
  /// In en, this message translates to:
  /// **'Sat'**
  String get sat;

  /// No description provided for @sun.
  ///
  /// In en, this message translates to:
  /// **'Sun'**
  String get sun;

  /// No description provided for @revenue_trends.
  ///
  /// In en, this message translates to:
  /// **'Revenue Trends'**
  String get revenue_trends;

  /// No description provided for @notification_open_rate.
  ///
  /// In en, this message translates to:
  /// **'Notification Open Rate'**
  String get notification_open_rate;

  /// No description provided for @opened.
  ///
  /// In en, this message translates to:
  /// **'Opened'**
  String get opened;

  /// No description provided for @un_opened.
  ///
  /// In en, this message translates to:
  /// **'Un opened'**
  String get un_opened;

  /// No description provided for @peak_engagement_times.
  ///
  /// In en, this message translates to:
  /// **'Peak Engagement Times'**
  String get peak_engagement_times;

  /// No description provided for @open_rate.
  ///
  /// In en, this message translates to:
  /// **'Open Rate'**
  String get open_rate;

  /// No description provided for @ctr.
  ///
  /// In en, this message translates to:
  /// **'CTR'**
  String get ctr;

  /// No description provided for @this_week.
  ///
  /// In en, this message translates to:
  /// **'This week'**
  String get this_week;

  /// No description provided for @last_week.
  ///
  /// In en, this message translates to:
  /// **'Last week'**
  String get last_week;

  /// No description provided for @performance_comparison.
  ///
  /// In en, this message translates to:
  /// **'Performance Comparison'**
  String get performance_comparison;

  /// No description provided for @search_by_ticket_id.
  ///
  /// In en, this message translates to:
  /// **'Search by ticket ID'**
  String get search_by_ticket_id;

  /// No description provided for @export.
  ///
  /// In en, this message translates to:
  /// **'Export'**
  String get export;

  /// No description provided for @sort.
  ///
  /// In en, this message translates to:
  /// **'Sort'**
  String get sort;

  /// No description provided for @filter.
  ///
  /// In en, this message translates to:
  /// **'Filter'**
  String get filter;

  /// No description provided for @ticket_id.
  ///
  /// In en, this message translates to:
  /// **'Ticket ID'**
  String get ticket_id;

  /// No description provided for @user.
  ///
  /// In en, this message translates to:
  /// **'User'**
  String get user;

  /// No description provided for @category.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get category;

  /// No description provided for @status.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get status;

  /// No description provided for @assigned_to.
  ///
  /// In en, this message translates to:
  /// **'Assigned to'**
  String get assigned_to;

  /// No description provided for @created_at.
  ///
  /// In en, this message translates to:
  /// **'Created at'**
  String get created_at;

  /// No description provided for @last_updated.
  ///
  /// In en, this message translates to:
  /// **'Last updated'**
  String get last_updated;

  /// No description provided for @actions.
  ///
  /// In en, this message translates to:
  /// **'Actions'**
  String get actions;

  /// No description provided for @open.
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get open;

  /// No description provided for @in_progress.
  ///
  /// In en, this message translates to:
  /// **'In progress'**
  String get in_progress;

  /// No description provided for @closed.
  ///
  /// In en, this message translates to:
  /// **'Closed'**
  String get closed;

  /// No description provided for @showing.
  ///
  /// In en, this message translates to:
  /// **'Showing'**
  String get showing;

  /// No description provided for @eg.
  ///
  /// In en, this message translates to:
  /// **'e.g.'**
  String get eg;

  /// No description provided for @go_to.
  ///
  /// In en, this message translates to:
  /// **'Go to'**
  String get go_to;

  /// No description provided for @count.
  ///
  /// In en, this message translates to:
  /// **'Count'**
  String get count;

  /// No description provided for @total_count.
  ///
  /// In en, this message translates to:
  /// **'Total count'**
  String get total_count;

  /// No description provided for @edit_ticket.
  ///
  /// In en, this message translates to:
  /// **'Edit ticket'**
  String get edit_ticket;

  /// No description provided for @assigned_employee.
  ///
  /// In en, this message translates to:
  /// **'Assigned employee'**
  String get assigned_employee;

  /// No description provided for @update.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get update;

  /// No description provided for @ticket_not_found.
  ///
  /// In en, this message translates to:
  /// **'Ticket not found'**
  String get ticket_not_found;

  /// No description provided for @send.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get send;

  /// No description provided for @message_here.
  ///
  /// In en, this message translates to:
  /// **'Message here...'**
  String get message_here;

  /// No description provided for @description.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get description;

  /// No description provided for @subject.
  ///
  /// In en, this message translates to:
  /// **'Subject'**
  String get subject;

  /// No description provided for @date_submitted.
  ///
  /// In en, this message translates to:
  /// **'Date submitted'**
  String get date_submitted;

  /// No description provided for @submitted_by.
  ///
  /// In en, this message translates to:
  /// **'Submitted by'**
  String get submitted_by;

  /// No description provided for @attachments.
  ///
  /// In en, this message translates to:
  /// **'Attachments'**
  String get attachments;

  /// No description provided for @invoices.
  ///
  /// In en, this message translates to:
  /// **'Invoices'**
  String get invoices;

  /// No description provided for @usage_metrics.
  ///
  /// In en, this message translates to:
  /// **'Usage metrics'**
  String get usage_metrics;

  /// No description provided for @subscriptions.
  ///
  /// In en, this message translates to:
  /// **'Subscriptions'**
  String get subscriptions;

  /// No description provided for @revenue_per_business.
  ///
  /// In en, this message translates to:
  /// **'Revenue per business'**
  String get revenue_per_business;

  /// No description provided for @a2p_messages.
  ///
  /// In en, this message translates to:
  /// **'A2P messages'**
  String get a2p_messages;

  /// No description provided for @otp_messages.
  ///
  /// In en, this message translates to:
  /// **'OTP messages'**
  String get otp_messages;

  /// No description provided for @business.
  ///
  /// In en, this message translates to:
  /// **'Business'**
  String get business;

  /// No description provided for @subscription.
  ///
  /// In en, this message translates to:
  /// **'Subscription'**
  String get subscription;

  /// No description provided for @payment_status.
  ///
  /// In en, this message translates to:
  /// **'Payment status'**
  String get payment_status;

  /// No description provided for @last_payment.
  ///
  /// In en, this message translates to:
  /// **'Last payment'**
  String get last_payment;

  /// No description provided for @next_payment.
  ///
  /// In en, this message translates to:
  /// **'Next payment'**
  String get next_payment;

  /// No description provided for @active.
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get active;

  /// No description provided for @inactive.
  ///
  /// In en, this message translates to:
  /// **'Inactive'**
  String get inactive;

  /// No description provided for @pending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get pending;

  /// No description provided for @failed.
  ///
  /// In en, this message translates to:
  /// **'Failed'**
  String get failed;

  /// No description provided for @over_due.
  ///
  /// In en, this message translates to:
  /// **'Over due'**
  String get over_due;

  /// No description provided for @cancelled.
  ///
  /// In en, this message translates to:
  /// **'Cancelled'**
  String get cancelled;

  /// No description provided for @billing.
  ///
  /// In en, this message translates to:
  /// **'Billing'**
  String get billing;

  /// No description provided for @paid.
  ///
  /// In en, this message translates to:
  /// **'Paid'**
  String get paid;

  /// No description provided for @amount.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get amount;

  /// No description provided for @invoice_id.
  ///
  /// In en, this message translates to:
  /// **'Invoice ID'**
  String get invoice_id;

  /// No description provided for @issue_date.
  ///
  /// In en, this message translates to:
  /// **'Issue date'**
  String get issue_date;

  /// No description provided for @due_date.
  ///
  /// In en, this message translates to:
  /// **'Due date'**
  String get due_date;

  /// No description provided for @filter_by.
  ///
  /// In en, this message translates to:
  /// **'Filter by'**
  String get filter_by;

  /// No description provided for @clear_all.
  ///
  /// In en, this message translates to:
  /// **'Clear all'**
  String get clear_all;

  /// No description provided for @priority.
  ///
  /// In en, this message translates to:
  /// **'Priority'**
  String get priority;

  /// No description provided for @low.
  ///
  /// In en, this message translates to:
  /// **'Low'**
  String get low;

  /// No description provided for @medium.
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get medium;

  /// No description provided for @high.
  ///
  /// In en, this message translates to:
  /// **'High'**
  String get high;

  /// No description provided for @amount_range.
  ///
  /// In en, this message translates to:
  /// **'Amount range'**
  String get amount_range;

  /// No description provided for @from.
  ///
  /// In en, this message translates to:
  /// **'From'**
  String get from;

  /// No description provided for @to.
  ///
  /// In en, this message translates to:
  /// **'To'**
  String get to;

  /// No description provided for @due_date_range.
  ///
  /// In en, this message translates to:
  /// **'Due date range'**
  String get due_date_range;

  /// No description provided for @issued_date_range.
  ///
  /// In en, this message translates to:
  /// **'Issued date range'**
  String get issued_date_range;

  /// No description provided for @inactive_businesses.
  ///
  /// In en, this message translates to:
  /// **'Inactive businesses'**
  String get inactive_businesses;

  /// No description provided for @add_plan.
  ///
  /// In en, this message translates to:
  /// **'Add plan'**
  String get add_plan;

  /// No description provided for @plans.
  ///
  /// In en, this message translates to:
  /// **'Plans'**
  String get plans;

  /// No description provided for @remove.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get remove;

  /// No description provided for @registration_date.
  ///
  /// In en, this message translates to:
  /// **'Registration date'**
  String get registration_date;

  /// No description provided for @suspended.
  ///
  /// In en, this message translates to:
  /// **'Suspended'**
  String get suspended;

  /// No description provided for @edit_business.
  ///
  /// In en, this message translates to:
  /// **'Edit business'**
  String get edit_business;

  /// No description provided for @add_business.
  ///
  /// In en, this message translates to:
  /// **'Add business'**
  String get add_business;

  /// No description provided for @business_not_found.
  ///
  /// In en, this message translates to:
  /// **'Business not found'**
  String get business_not_found;

  /// No description provided for @search_by_user.
  ///
  /// In en, this message translates to:
  /// **'Search by user name,email or phone'**
  String get search_by_user;

  /// No description provided for @phone_numbers.
  ///
  /// In en, this message translates to:
  /// **'Phone numbers'**
  String get phone_numbers;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @blocked.
  ///
  /// In en, this message translates to:
  /// **'Blocked'**
  String get blocked;

  /// No description provided for @deleted.
  ///
  /// In en, this message translates to:
  /// **'Deleted'**
  String get deleted;

  /// No description provided for @edit_user.
  ///
  /// In en, this message translates to:
  /// **'Edit user'**
  String get edit_user;

  /// No description provided for @add_user.
  ///
  /// In en, this message translates to:
  /// **'Add user'**
  String get add_user;

  /// No description provided for @edit_employee.
  ///
  /// In en, this message translates to:
  /// **'Edit employee'**
  String get edit_employee;

  /// No description provided for @add_employee.
  ///
  /// In en, this message translates to:
  /// **'Add employee'**
  String get add_employee;

  /// No description provided for @phone_number.
  ///
  /// In en, this message translates to:
  /// **'Phone number'**
  String get phone_number;

  /// No description provided for @enter_name.
  ///
  /// In en, this message translates to:
  /// **'Enter name'**
  String get enter_name;

  /// No description provided for @enter_email.
  ///
  /// In en, this message translates to:
  /// **'Enter email'**
  String get enter_email;

  /// No description provided for @role.
  ///
  /// In en, this message translates to:
  /// **'Role'**
  String get role;

  /// No description provided for @select_role.
  ///
  /// In en, this message translates to:
  /// **'Select role'**
  String get select_role;

  /// No description provided for @select_status.
  ///
  /// In en, this message translates to:
  /// **'Select status'**
  String get select_status;

  /// No description provided for @enter_password.
  ///
  /// In en, this message translates to:
  /// **'Enter password'**
  String get enter_password;

  /// No description provided for @repeat_password.
  ///
  /// In en, this message translates to:
  /// **'Repeat password'**
  String get repeat_password;

  /// No description provided for @cropping.
  ///
  /// In en, this message translates to:
  /// **'Cropping...'**
  String get cropping;

  /// No description provided for @crop.
  ///
  /// In en, this message translates to:
  /// **'Crop'**
  String get crop;

  /// No description provided for @click_to_upload.
  ///
  /// In en, this message translates to:
  /// **'Click to upload'**
  String get click_to_upload;

  /// No description provided for @image.
  ///
  /// In en, this message translates to:
  /// **'Image'**
  String get image;

  /// No description provided for @can_not_load_image.
  ///
  /// In en, this message translates to:
  /// **'Can not load image'**
  String get can_not_load_image;

  /// No description provided for @can_not_crop_svg_image.
  ///
  /// In en, this message translates to:
  /// **'Can not crop svg image'**
  String get can_not_crop_svg_image;

  /// No description provided for @please_enter_a_name.
  ///
  /// In en, this message translates to:
  /// **'Please enter a name'**
  String get please_enter_a_name;

  /// No description provided for @name_must_be_at_least_3_characters_long.
  ///
  /// In en, this message translates to:
  /// **'Name must be at least 3 characters long'**
  String get name_must_be_at_least_3_characters_long;

  /// No description provided for @please_enter_an_email.
  ///
  /// In en, this message translates to:
  /// **'Please enter an email'**
  String get please_enter_an_email;

  /// No description provided for @please_enter_a_valid_email.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid email'**
  String get please_enter_a_valid_email;

  /// No description provided for @employee_created_successfully.
  ///
  /// In en, this message translates to:
  /// **'Employee created successfully'**
  String get employee_created_successfully;

  /// No description provided for @failed_to_create_employee.
  ///
  /// In en, this message translates to:
  /// **'Failed to create employee'**
  String get failed_to_create_employee;

  /// No description provided for @employee_updated_successfully.
  ///
  /// In en, this message translates to:
  /// **'Employee updated successfully'**
  String get employee_updated_successfully;

  /// No description provided for @failed_to_update_employee.
  ///
  /// In en, this message translates to:
  /// **'Failed to update employee'**
  String get failed_to_update_employee;

  /// No description provided for @employee_name_a_to_z.
  ///
  /// In en, this message translates to:
  /// **'Employee name: A to Z'**
  String get employee_name_a_to_z;

  /// No description provided for @employee_name_z_to_a.
  ///
  /// In en, this message translates to:
  /// **'Employee name: Z to A'**
  String get employee_name_z_to_a;

  /// No description provided for @search_by_employee_name.
  ///
  /// In en, this message translates to:
  /// **'Search by employee name'**
  String get search_by_employee_name;

  /// No description provided for @no_employees_found.
  ///
  /// In en, this message translates to:
  /// **'No employees found'**
  String get no_employees_found;

  /// No description provided for @user_created_successfully.
  ///
  /// In en, this message translates to:
  /// **'User created successfully'**
  String get user_created_successfully;

  /// No description provided for @failed_to_create_user.
  ///
  /// In en, this message translates to:
  /// **'Failed to create user'**
  String get failed_to_create_user;

  /// No description provided for @user_updated_successfully.
  ///
  /// In en, this message translates to:
  /// **'User updated successfully'**
  String get user_updated_successfully;

  /// No description provided for @failed_to_update_user.
  ///
  /// In en, this message translates to:
  /// **'Failed to update user'**
  String get failed_to_update_user;

  /// No description provided for @user_name_a_to_z.
  ///
  /// In en, this message translates to:
  /// **'User name: A to Z'**
  String get user_name_a_to_z;

  /// No description provided for @user_name_z_to_a.
  ///
  /// In en, this message translates to:
  /// **'User name: Z to A'**
  String get user_name_z_to_a;

  /// No description provided for @search_by_user_name.
  ///
  /// In en, this message translates to:
  /// **'Search by user name'**
  String get search_by_user_name;

  /// No description provided for @search_by_name.
  ///
  /// In en, this message translates to:
  /// **'Search by name'**
  String get search_by_name;

  /// No description provided for @no_users_found.
  ///
  /// In en, this message translates to:
  /// **'No users found'**
  String get no_users_found;

  /// No description provided for @registration_date_range.
  ///
  /// In en, this message translates to:
  /// **'Registration date range'**
  String get registration_date_range;

  /// No description provided for @delete_user.
  ///
  /// In en, this message translates to:
  /// **'Delete user'**
  String get delete_user;

  /// No description provided for @are_you_sure_you_want_to_delete_this_user.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this user?'**
  String get are_you_sure_you_want_to_delete_this_user;

  /// No description provided for @are_you_sure_you_want_to_delete_this_record.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this record?'**
  String get are_you_sure_you_want_to_delete_this_record;

  /// No description provided for @user_deleted_successfully.
  ///
  /// In en, this message translates to:
  /// **'User deleted successfully'**
  String get user_deleted_successfully;

  /// No description provided for @failed_to_delete_user.
  ///
  /// In en, this message translates to:
  /// **'Failed to delete user'**
  String get failed_to_delete_user;

  /// No description provided for @delete_employee.
  ///
  /// In en, this message translates to:
  /// **'Delete employee?'**
  String get delete_employee;

  /// No description provided for @delete_confirm_dialog_description.
  ///
  /// In en, this message translates to:
  /// **'To confirm, type \"Delete\" in the input below'**
  String get delete_confirm_dialog_description;

  /// No description provided for @confirm_deletion.
  ///
  /// In en, this message translates to:
  /// **'Confirm deletion'**
  String get confirm_deletion;

  /// No description provided for @make_sure_you_typed_delete_correctly.
  ///
  /// In en, this message translates to:
  /// **'Make sure you typed \"Delete\" correctly'**
  String get make_sure_you_typed_delete_correctly;

  /// No description provided for @employee_deleted_successfully.
  ///
  /// In en, this message translates to:
  /// **'Employee deleted successfully'**
  String get employee_deleted_successfully;

  /// No description provided for @failed_to_delete_employee.
  ///
  /// In en, this message translates to:
  /// **'Failed to delete employee'**
  String get failed_to_delete_employee;

  /// No description provided for @business_updated_successfully.
  ///
  /// In en, this message translates to:
  /// **'Business updated successfully'**
  String get business_updated_successfully;

  /// No description provided for @failed_to_update_business.
  ///
  /// In en, this message translates to:
  /// **'Failed to update business'**
  String get failed_to_update_business;

  /// No description provided for @business_created_successfully.
  ///
  /// In en, this message translates to:
  /// **'Business created successfully'**
  String get business_created_successfully;

  /// No description provided for @failed_to_create_business.
  ///
  /// In en, this message translates to:
  /// **'Failed to create business'**
  String get failed_to_create_business;

  /// No description provided for @search_by_business_name.
  ///
  /// In en, this message translates to:
  /// **'Search by business name'**
  String get search_by_business_name;

  /// No description provided for @business_name_z_to_a.
  ///
  /// In en, this message translates to:
  /// **'Business name: Z to A'**
  String get business_name_z_to_a;

  /// No description provided for @business_name_a_to_z.
  ///
  /// In en, this message translates to:
  /// **'Business name: A to Z'**
  String get business_name_a_to_z;

  /// No description provided for @registration_date_latest.
  ///
  /// In en, this message translates to:
  /// **'Registration date: Latest'**
  String get registration_date_latest;

  /// No description provided for @registration_date_oldest.
  ///
  /// In en, this message translates to:
  /// **'Registration date: Oldest'**
  String get registration_date_oldest;

  /// No description provided for @subscription_plan.
  ///
  /// In en, this message translates to:
  /// **'Subscription plan'**
  String get subscription_plan;

  /// No description provided for @enter_alias.
  ///
  /// In en, this message translates to:
  /// **'Enter alias'**
  String get enter_alias;

  /// No description provided for @alias.
  ///
  /// In en, this message translates to:
  /// **'Alias'**
  String get alias;

  /// No description provided for @personal_contact_details.
  ///
  /// In en, this message translates to:
  /// **'Personal contact details'**
  String get personal_contact_details;

  /// No description provided for @please_select_a_role.
  ///
  /// In en, this message translates to:
  /// **'Please select a role'**
  String get please_select_a_role;

  /// No description provided for @company_registration_document.
  ///
  /// In en, this message translates to:
  /// **'Company registration document'**
  String get company_registration_document;

  /// No description provided for @scanned_agreement_document.
  ///
  /// In en, this message translates to:
  /// **'Scanned agreement document'**
  String get scanned_agreement_document;

  /// No description provided for @multiple_supported.
  ///
  /// In en, this message translates to:
  /// **'(Multiple supported)'**
  String get multiple_supported;

  /// No description provided for @you_can_only_upload_8_files.
  ///
  /// In en, this message translates to:
  /// **'You can only upload 8 files'**
  String get you_can_only_upload_8_files;

  /// No description provided for @details.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get details;

  /// No description provided for @projects.
  ///
  /// In en, this message translates to:
  /// **'Projects'**
  String get projects;

  /// No description provided for @view.
  ///
  /// In en, this message translates to:
  /// **'View'**
  String get view;

  /// No description provided for @files.
  ///
  /// In en, this message translates to:
  /// **'Files'**
  String get files;

  /// No description provided for @business_projects.
  ///
  /// In en, this message translates to:
  /// **'Business projects'**
  String get business_projects;

  /// No description provided for @project.
  ///
  /// In en, this message translates to:
  /// **'Project'**
  String get project;

  /// No description provided for @project_id.
  ///
  /// In en, this message translates to:
  /// **'Project ID'**
  String get project_id;

  /// No description provided for @add_project.
  ///
  /// In en, this message translates to:
  /// **'Add project'**
  String get add_project;

  /// No description provided for @edit_project.
  ///
  /// In en, this message translates to:
  /// **'Edit project'**
  String get edit_project;

  /// No description provided for @creation_date_range.
  ///
  /// In en, this message translates to:
  /// **'Creation date range'**
  String get creation_date_range;

  /// No description provided for @created_at_latest.
  ///
  /// In en, this message translates to:
  /// **'Created at: Latest'**
  String get created_at_latest;

  /// No description provided for @created_at_oldest.
  ///
  /// In en, this message translates to:
  /// **'Created at: Oldest'**
  String get created_at_oldest;

  /// No description provided for @no_items_found.
  ///
  /// In en, this message translates to:
  /// **'No items found'**
  String get no_items_found;

  /// No description provided for @select_business.
  ///
  /// In en, this message translates to:
  /// **'Select business'**
  String get select_business;

  /// No description provided for @select_project_type.
  ///
  /// In en, this message translates to:
  /// **'Select project type'**
  String get select_project_type;

  /// No description provided for @project_type.
  ///
  /// In en, this message translates to:
  /// **'Project type'**
  String get project_type;

  /// No description provided for @please_select_business.
  ///
  /// In en, this message translates to:
  /// **'Please select business'**
  String get please_select_business;

  /// No description provided for @please_select_project_type.
  ///
  /// In en, this message translates to:
  /// **'Please select project type'**
  String get please_select_project_type;

  /// No description provided for @delete_project.
  ///
  /// In en, this message translates to:
  /// **'Delete project'**
  String get delete_project;

  /// No description provided for @failed_to_update_project.
  ///
  /// In en, this message translates to:
  /// **'Failed to update project'**
  String get failed_to_update_project;

  /// No description provided for @project_updated_successfully.
  ///
  /// In en, this message translates to:
  /// **'Project updated successfully'**
  String get project_updated_successfully;

  /// No description provided for @failed_to_delete_project.
  ///
  /// In en, this message translates to:
  /// **'Failed to delete project'**
  String get failed_to_delete_project;

  /// No description provided for @project_deleted_successfully.
  ///
  /// In en, this message translates to:
  /// **'Project deleted successfully'**
  String get project_deleted_successfully;

  /// No description provided for @project_created_successfully.
  ///
  /// In en, this message translates to:
  /// **'Project created successfully'**
  String get project_created_successfully;

  /// No description provided for @failed_to_create_project.
  ///
  /// In en, this message translates to:
  /// **'Failed to create project'**
  String get failed_to_create_project;

  /// No description provided for @project_settings.
  ///
  /// In en, this message translates to:
  /// **'Project settings'**
  String get project_settings;

  /// No description provided for @api_key.
  ///
  /// In en, this message translates to:
  /// **'API key'**
  String get api_key;

  /// No description provided for @project_name.
  ///
  /// In en, this message translates to:
  /// **'Project name'**
  String get project_name;

  /// No description provided for @project_name_a_to_z.
  ///
  /// In en, this message translates to:
  /// **'Project name: A to Z'**
  String get project_name_a_to_z;

  /// No description provided for @project_name_z_to_a.
  ///
  /// In en, this message translates to:
  /// **'Project name: Z to A'**
  String get project_name_z_to_a;

  /// No description provided for @sent.
  ///
  /// In en, this message translates to:
  /// **'Sent'**
  String get sent;

  /// No description provided for @no_notifications_found.
  ///
  /// In en, this message translates to:
  /// **'No notifications found'**
  String get no_notifications_found;

  /// No description provided for @notification_created_successfully.
  ///
  /// In en, this message translates to:
  /// **'Notification created successfully'**
  String get notification_created_successfully;

  /// No description provided for @failed_to_create_notification.
  ///
  /// In en, this message translates to:
  /// **'Failed to create notification'**
  String get failed_to_create_notification;

  /// No description provided for @notification_updated_successfully.
  ///
  /// In en, this message translates to:
  /// **'Notification updated successfully'**
  String get notification_updated_successfully;

  /// No description provided for @failed_to_update_notification.
  ///
  /// In en, this message translates to:
  /// **'Failed to update notification'**
  String get failed_to_update_notification;

  /// No description provided for @notification_deleted_successfully.
  ///
  /// In en, this message translates to:
  /// **'Notification deleted successfully'**
  String get notification_deleted_successfully;

  /// No description provided for @failed_to_delete_notification.
  ///
  /// In en, this message translates to:
  /// **'Failed to delete notification'**
  String get failed_to_delete_notification;

  /// No description provided for @add_notification.
  ///
  /// In en, this message translates to:
  /// **'Add notification'**
  String get add_notification;

  /// No description provided for @search_by_notification_title.
  ///
  /// In en, this message translates to:
  /// **'Search by notification title'**
  String get search_by_notification_title;

  /// No description provided for @delete_notification.
  ///
  /// In en, this message translates to:
  /// **'Delete notification'**
  String get delete_notification;

  /// No description provided for @my_account.
  ///
  /// In en, this message translates to:
  /// **'My account'**
  String get my_account;

  /// No description provided for @title.
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get title;

  /// No description provided for @type.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get type;

  /// No description provided for @receiver.
  ///
  /// In en, this message translates to:
  /// **'Receiver'**
  String get receiver;

  /// No description provided for @date.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get date;

  /// No description provided for @type_a_to_z.
  ///
  /// In en, this message translates to:
  /// **'Type: A to Z'**
  String get type_a_to_z;

  /// No description provided for @type_z_to_a.
  ///
  /// In en, this message translates to:
  /// **'Type: Z to A'**
  String get type_z_to_a;

  /// No description provided for @date_oldest.
  ///
  /// In en, this message translates to:
  /// **'Date: Oldest'**
  String get date_oldest;

  /// No description provided for @date_latest.
  ///
  /// In en, this message translates to:
  /// **'Date: Latest'**
  String get date_latest;

  /// No description provided for @mobile_app.
  ///
  /// In en, this message translates to:
  /// **'Mobile app'**
  String get mobile_app;

  /// No description provided for @business_dashboard.
  ///
  /// In en, this message translates to:
  /// **'Business dashboard'**
  String get business_dashboard;

  /// No description provided for @moja_dashboard.
  ///
  /// In en, this message translates to:
  /// **'Moja dashboard'**
  String get moja_dashboard;

  /// No description provided for @platform_destination.
  ///
  /// In en, this message translates to:
  /// **'Platform destination'**
  String get platform_destination;

  /// No description provided for @date_range.
  ///
  /// In en, this message translates to:
  /// **'Date range'**
  String get date_range;

  /// No description provided for @end_users.
  ///
  /// In en, this message translates to:
  /// **'End users'**
  String get end_users;

  /// No description provided for @destination.
  ///
  /// In en, this message translates to:
  /// **'Destination'**
  String get destination;

  /// No description provided for @edit_notification.
  ///
  /// In en, this message translates to:
  /// **'Edit notification'**
  String get edit_notification;

  /// No description provided for @write_your_message.
  ///
  /// In en, this message translates to:
  /// **'Write your message'**
  String get write_your_message;

  /// No description provided for @content.
  ///
  /// In en, this message translates to:
  /// **'Content'**
  String get content;

  /// No description provided for @enter_title.
  ///
  /// In en, this message translates to:
  /// **'Enter title'**
  String get enter_title;

  /// No description provided for @alert.
  ///
  /// In en, this message translates to:
  /// **'Alert'**
  String get alert;

  /// No description provided for @promotion.
  ///
  /// In en, this message translates to:
  /// **'Promotion'**
  String get promotion;

  /// No description provided for @reminder.
  ///
  /// In en, this message translates to:
  /// **'Reminder'**
  String get reminder;

  /// No description provided for @link_type.
  ///
  /// In en, this message translates to:
  /// **'Link type'**
  String get link_type;

  /// No description provided for @internal.
  ///
  /// In en, this message translates to:
  /// **'Internal'**
  String get internal;

  /// No description provided for @external.
  ///
  /// In en, this message translates to:
  /// **'External'**
  String get external;

  /// No description provided for @enter_link.
  ///
  /// In en, this message translates to:
  /// **'Enter link'**
  String get enter_link;

  /// No description provided for @link.
  ///
  /// In en, this message translates to:
  /// **'Link'**
  String get link;

  /// No description provided for @title_is_required.
  ///
  /// In en, this message translates to:
  /// **'Title is required'**
  String get title_is_required;

  /// No description provided for @title_must_be_less_than_50_characters.
  ///
  /// In en, this message translates to:
  /// **'Title must be less than 50 characters'**
  String get title_must_be_less_than_50_characters;

  /// No description provided for @title_must_be_more_than_3_characters.
  ///
  /// In en, this message translates to:
  /// **'Title must be more than 3 characters'**
  String get title_must_be_more_than_3_characters;

  /// No description provided for @type_is_required.
  ///
  /// In en, this message translates to:
  /// **'Type is required'**
  String get type_is_required;

  /// No description provided for @link_is_too_short.
  ///
  /// In en, this message translates to:
  /// **'Link is too short'**
  String get link_is_too_short;

  /// No description provided for @add_role.
  ///
  /// In en, this message translates to:
  /// **'Add role'**
  String get add_role;

  /// No description provided for @delete_role.
  ///
  /// In en, this message translates to:
  /// **'Delete role'**
  String get delete_role;

  /// No description provided for @role_updated_successfully.
  ///
  /// In en, this message translates to:
  /// **'Role updated successfully'**
  String get role_updated_successfully;

  /// No description provided for @failed_to_update_role.
  ///
  /// In en, this message translates to:
  /// **'Failed to update role'**
  String get failed_to_update_role;

  /// No description provided for @role_deleted_successfully.
  ///
  /// In en, this message translates to:
  /// **'Role deleted successfully'**
  String get role_deleted_successfully;

  /// No description provided for @failed_to_delete_role.
  ///
  /// In en, this message translates to:
  /// **'Failed to delete role'**
  String get failed_to_delete_role;

  /// No description provided for @role_created_successfully.
  ///
  /// In en, this message translates to:
  /// **'Role created successfully'**
  String get role_created_successfully;

  /// No description provided for @failed_to_create_role.
  ///
  /// In en, this message translates to:
  /// **'Failed to create role'**
  String get failed_to_create_role;

  /// No description provided for @permissions.
  ///
  /// In en, this message translates to:
  /// **'Permissions'**
  String get permissions;

  /// No description provided for @no_roles_found.
  ///
  /// In en, this message translates to:
  /// **'No roles found'**
  String get no_roles_found;

  /// No description provided for @search_by_role.
  ///
  /// In en, this message translates to:
  /// **'Search by role'**
  String get search_by_role;

  /// No description provided for @edit_role.
  ///
  /// In en, this message translates to:
  /// **'Edit role'**
  String get edit_role;

  /// No description provided for @describe_the_role_in_detail.
  ///
  /// In en, this message translates to:
  /// **'Describe the role in detail'**
  String get describe_the_role_in_detail;

  /// No description provided for @select_permissions.
  ///
  /// In en, this message translates to:
  /// **'Select permissions'**
  String get select_permissions;

  /// No description provided for @please_select_at_least_one_permission.
  ///
  /// In en, this message translates to:
  /// **'Please select at least one permission'**
  String get please_select_at_least_one_permission;

  /// No description provided for @failed_to_update_account.
  ///
  /// In en, this message translates to:
  /// **'Failed to update account'**
  String get failed_to_update_account;

  /// No description provided for @change_password.
  ///
  /// In en, this message translates to:
  /// **'Change password'**
  String get change_password;

  /// No description provided for @save_changes.
  ///
  /// In en, this message translates to:
  /// **'Save changes'**
  String get save_changes;

  /// No description provided for @real_time_alerts.
  ///
  /// In en, this message translates to:
  /// **'Real time alerts'**
  String get real_time_alerts;

  /// No description provided for @real_time_alerts_description.
  ///
  /// In en, this message translates to:
  /// **'Receive real time alerts for your business'**
  String get real_time_alerts_description;

  /// No description provided for @task_reminders.
  ///
  /// In en, this message translates to:
  /// **'Task reminders'**
  String get task_reminders;

  /// No description provided for @task_reminders_description.
  ///
  /// In en, this message translates to:
  /// **'Receive reminders for your tasks'**
  String get task_reminders_description;

  /// No description provided for @subscription_updates.
  ///
  /// In en, this message translates to:
  /// **'Subscription updates'**
  String get subscription_updates;

  /// No description provided for @subscription_updates_description.
  ///
  /// In en, this message translates to:
  /// **'Receive updates for your subscriptions'**
  String get subscription_updates_description;

  /// No description provided for @general_updates.
  ///
  /// In en, this message translates to:
  /// **'General updates'**
  String get general_updates;

  /// No description provided for @general_updates_description.
  ///
  /// In en, this message translates to:
  /// **'Receive updates for your general account'**
  String get general_updates_description;

  /// No description provided for @account_alerts.
  ///
  /// In en, this message translates to:
  /// **'Account alerts'**
  String get account_alerts;

  /// No description provided for @account_alerts_description.
  ///
  /// In en, this message translates to:
  /// **'Receive alerts for your account'**
  String get account_alerts_description;

  /// No description provided for @billing_alerts.
  ///
  /// In en, this message translates to:
  /// **'Billing alerts'**
  String get billing_alerts;

  /// No description provided for @billing_alerts_description.
  ///
  /// In en, this message translates to:
  /// **'Receive alerts for your billing'**
  String get billing_alerts_description;

  /// No description provided for @security_alerts.
  ///
  /// In en, this message translates to:
  /// **'Security alerts'**
  String get security_alerts;

  /// No description provided for @security_alerts_description.
  ///
  /// In en, this message translates to:
  /// **'Receive alerts for your security'**
  String get security_alerts_description;

  /// No description provided for @email_notifications.
  ///
  /// In en, this message translates to:
  /// **'Email notifications'**
  String get email_notifications;

  /// No description provided for @push_notifications.
  ///
  /// In en, this message translates to:
  /// **'Push notifications'**
  String get push_notifications;

  /// No description provided for @password_does_not_match.
  ///
  /// In en, this message translates to:
  /// **'Password does not match'**
  String get password_does_not_match;

  /// No description provided for @confirm_password_is_required.
  ///
  /// In en, this message translates to:
  /// **'Confirm password is required'**
  String get confirm_password_is_required;

  /// No description provided for @current_password.
  ///
  /// In en, this message translates to:
  /// **'Current password'**
  String get current_password;

  /// No description provided for @enter_current_password.
  ///
  /// In en, this message translates to:
  /// **'Enter current password'**
  String get enter_current_password;

  /// No description provided for @new_password.
  ///
  /// In en, this message translates to:
  /// **'New password'**
  String get new_password;

  /// No description provided for @enter_new_password.
  ///
  /// In en, this message translates to:
  /// **'Enter new password'**
  String get enter_new_password;

  /// No description provided for @confirm_new_password.
  ///
  /// In en, this message translates to:
  /// **'Confirm new password'**
  String get confirm_new_password;

  /// No description provided for @password_must_be_at_least_8_characters.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 8 characters'**
  String get password_must_be_at_least_8_characters;

  /// No description provided for @password_must_be_less_than_50_characters.
  ///
  /// In en, this message translates to:
  /// **'Password must be less than 50 characters'**
  String get password_must_be_less_than_50_characters;

  /// No description provided for @password_changed_successfully.
  ///
  /// In en, this message translates to:
  /// **'Password Changed Successfully'**
  String get password_changed_successfully;

  /// No description provided for @app_logo.
  ///
  /// In en, this message translates to:
  /// **'App logo'**
  String get app_logo;

  /// No description provided for @app_bar_background_image.
  ///
  /// In en, this message translates to:
  /// **'App bar background image'**
  String get app_bar_background_image;

  /// No description provided for @default_app_language.
  ///
  /// In en, this message translates to:
  /// **'Default app language'**
  String get default_app_language;

  /// No description provided for @select_default_app_language.
  ///
  /// In en, this message translates to:
  /// **'Select default app language'**
  String get select_default_app_language;

  /// No description provided for @support_email.
  ///
  /// In en, this message translates to:
  /// **'Support email'**
  String get support_email;

  /// No description provided for @support_phone_number.
  ///
  /// In en, this message translates to:
  /// **'Support phone number'**
  String get support_phone_number;

  /// No description provided for @address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get address;

  /// No description provided for @enter_address.
  ///
  /// In en, this message translates to:
  /// **'Enter address'**
  String get enter_address;

  /// No description provided for @pdf.
  ///
  /// In en, this message translates to:
  /// **'PDF'**
  String get pdf;

  /// No description provided for @excel.
  ///
  /// In en, this message translates to:
  /// **'Excel'**
  String get excel;

  /// No description provided for @are_you_sure_you_want_to_sign_out.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to sign out?'**
  String get are_you_sure_you_want_to_sign_out;

  /// No description provided for @failed_to_login.
  ///
  /// In en, this message translates to:
  /// **'Failed to login'**
  String get failed_to_login;

  /// No description provided for @upcoming_payments.
  ///
  /// In en, this message translates to:
  /// **'Upcoming Payments'**
  String get upcoming_payments;

  /// No description provided for @payment_method.
  ///
  /// In en, this message translates to:
  /// **'Payment Method'**
  String get payment_method;

  /// No description provided for @amount_due_for_next_cycle.
  ///
  /// In en, this message translates to:
  /// **'Amount Due for Next Cycle'**
  String get amount_due_for_next_cycle;

  /// No description provided for @delivery_logs.
  ///
  /// In en, this message translates to:
  /// **'Delivery Logs'**
  String get delivery_logs;

  /// No description provided for @notification_analysis.
  ///
  /// In en, this message translates to:
  /// **'Notification Analysis'**
  String get notification_analysis;

  /// No description provided for @customer_support.
  ///
  /// In en, this message translates to:
  /// **'Customer Support'**
  String get customer_support;

  /// No description provided for @payment_methods.
  ///
  /// In en, this message translates to:
  /// **'Payment Methods'**
  String get payment_methods;

  /// No description provided for @add_new_method.
  ///
  /// In en, this message translates to:
  /// **'Add New Method'**
  String get add_new_method;

  /// No description provided for @billing_status.
  ///
  /// In en, this message translates to:
  /// **'Billing Status'**
  String get billing_status;

  /// No description provided for @current_plan.
  ///
  /// In en, this message translates to:
  /// **'Current Plan'**
  String get current_plan;

  /// No description provided for @outstanding_amount.
  ///
  /// In en, this message translates to:
  /// **'Outstanding Amount'**
  String get outstanding_amount;

  /// No description provided for @usage_summary.
  ///
  /// In en, this message translates to:
  /// **'Usage Summary'**
  String get usage_summary;

  /// No description provided for @otp_messages_sent.
  ///
  /// In en, this message translates to:
  /// **'OTP Messages Sent'**
  String get otp_messages_sent;

  /// No description provided for @failed_message.
  ///
  /// In en, this message translates to:
  /// **'Failed Message'**
  String get failed_message;

  /// No description provided for @notifications_sent.
  ///
  /// In en, this message translates to:
  /// **'Notifications Sent'**
  String get notifications_sent;

  /// No description provided for @plan_details.
  ///
  /// In en, this message translates to:
  /// **'Plan Details'**
  String get plan_details;

  /// No description provided for @plan_name.
  ///
  /// In en, this message translates to:
  /// **'Plan Name'**
  String get plan_name;

  /// No description provided for @renewal_date.
  ///
  /// In en, this message translates to:
  /// **'Renewal Date'**
  String get renewal_date;

  /// No description provided for @usage_limit.
  ///
  /// In en, this message translates to:
  /// **'Usage Limit'**
  String get usage_limit;

  /// No description provided for @hybrid.
  ///
  /// In en, this message translates to:
  /// **'Hybrid'**
  String get hybrid;

  /// No description provided for @message_limit.
  ///
  /// In en, this message translates to:
  /// **'Message Limit'**
  String get message_limit;

  /// No description provided for @notification_limit.
  ///
  /// In en, this message translates to:
  /// **'Notification Limit'**
  String get notification_limit;

  /// No description provided for @upgrade.
  ///
  /// In en, this message translates to:
  /// **'Upgrade'**
  String get upgrade;

  /// No description provided for @message_history.
  ///
  /// In en, this message translates to:
  /// **'Message History'**
  String get message_history;

  /// No description provided for @recipient.
  ///
  /// In en, this message translates to:
  /// **'Recipient'**
  String get recipient;

  /// No description provided for @message_type.
  ///
  /// In en, this message translates to:
  /// **'Message Type'**
  String get message_type;

  /// No description provided for @delivery_time.
  ///
  /// In en, this message translates to:
  /// **'Delivery Time'**
  String get delivery_time;

  /// No description provided for @successful.
  ///
  /// In en, this message translates to:
  /// **'Successful'**
  String get successful;

  /// No description provided for @search_by_project_id.
  ///
  /// In en, this message translates to:
  /// **'Search by Project ID'**
  String get search_by_project_id;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'en', 'ku'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return AppLocalizationsAr();
    case 'en': return AppLocalizationsEn();
    case 'ku': return AppLocalizationsKu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
