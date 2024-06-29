class ApiUrls {
  static String get baseUrl => "http://159.223.38.189:3333";

  //******************USER AUTHENTICATION URI********************//
  static String get logInUri => "$baseUrl/front-end/v1/auth/login";
  static String get registrationUri => "$baseUrl/front-end/auth/register";
  static String get otpRequestUri => "$baseUrl/";
  static String get otpSubmitUri => "$baseUrl/front-end/v1/auth/otp-verify";
  static String get homeScreenUri => "$baseUrl/front-end/v1/landing/dashboard";
  static String get impressionUri => "$baseUrl/front-end/v1/landing/impression";
  static String get userInfoUri => "$baseUrl/front-end/v1/auth/user-info";
  static String get userInfoUpdateUri =>
      "$baseUrl/front-end/v1/auth/update-profile";

  // **** utils ****//
  static String get getCountries => "$baseUrl/front-end/v1/utilities/countries";
  static String get countryDataResUri =>
      "$baseUrl/front-end/v1/utilities/countries";
  static String get cityDataResUri => "$baseUrl/front-end/v1/utilities/cities";
  static String get locationDataResUri =>
      "$baseUrl/front-end/v1/utilities/locations";

  // ****************** HomeScreen URI********************//
  static String get campaignUri => "$baseUrl/front-end/v1/landing/campaigns";

  // Profile Picture update URl
  static String get profilePictureUpdateUrl => "$baseUrl/front-end/v1/auth/upload-profile-photo";
}
