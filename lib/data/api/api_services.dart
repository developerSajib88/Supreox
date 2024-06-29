
class ApiServices {
  // Log In API service
  static Future<LogInDataRes?> userLogIn(
      {required Map<String, dynamic>? body}) async {
    Map<String, dynamic>? response =
        await ApiMethod(isBasic: true).post(ApiUrls.logInUri, body);

    if (response != null) {
      LogInDataRes logInDataRes = LogInDataRes.fromJson(response);
      return logInDataRes;
    } else {
      return null;
    }
  }

  // Registration API service
  static Future<RegistrationDataRes?> userRegistration(
      {required Map<String, dynamic>? body}) async {
    Map<String, dynamic>? response =
        await ApiMethod(isBasic: true).post(ApiUrls.registrationUri, body);
    if (response != null) {
      RegistrationDataRes registrationDataRes =
          RegistrationDataRes.fromJson(response);
      return registrationDataRes;
    } else {
      return null;
    }
  }

  // OTP request API service
  static Future<bool?> otpRequest({required Map<String, dynamic>? body}) async {
    Map<String, dynamic>? response =
        await ApiMethod(isBasic: true).post(ApiUrls.otpRequestUri, body);
    if (response != null) {
      return true;
    } else {
      return false;
    }
  }

  // OTP submit API service
  static Future<OtpReponse?> submitOTP(
      {required Map<String, dynamic>? body}) async {
    Map<String, dynamic>? response =
        await ApiMethod(isBasic: true).post(ApiUrls.otpSubmitUri, body);
    if (response != null) {
      final otpResponse = OtpReponse.fromJson(response);
      SetLocalDatabase().userAccessToken(otpResponse.data?.access?.token ?? "");
      SetLocalDatabase()
          .userRefreshToken(otpResponse.data?.refresh?.token ?? "");
      SetLocalDatabase().userIsLogin(true);
      SetLocalDatabase()
          .setCampaign(otpResponse.data?.user?.campaign?.id ?? "");

      return otpResponse;
    } else {
      return null;
    }
  }

  // Get Home Screen Data API service
  static Future<HomeScreenResponse?> getHomeScreenData() async {
    Map<String, dynamic>? response =
        await ApiMethod(isBasic: false).get(ApiUrls.homeScreenUri);
    if (response != null) {
      HomeScreenResponse homeScreenData = HomeScreenResponse.fromJson(response);
      return homeScreenData;
    } else {
      return null;
    }
  }

  static Future<bool?> submitImpression(
      {required Map<String, dynamic> body}) async {
    Map<String, dynamic>? response =
        await ApiMethod(isBasic: false).post(ApiUrls.impressionUri, body);
    return response != null;
  }

  //Get User Profile Info
  static Future<UserProfileRes?> getUserProfileInfo() async {
    Map<String, dynamic>? response =
        await ApiMethod(isBasic: false).get(ApiUrls.userInfoUri);
    if (response != null) {
      UserProfileRes userProfileRes = UserProfileRes.fromJson(response);
      return userProfileRes;
    } else {
      return null;
    }
  }

  //Get User Profile Info
  static Future<bool?> updateUserProfileInfo(
      {required Map<String, dynamic> body}) async {
    Map<String, dynamic>? response = await ApiMethod(isBasic: false)
        .put(ApiUrls.userInfoUpdateUri, body, statusCode: 202);
    return response != null;
  }

  static Future<CountryDataRes?> getCountryData() async {
    Map<String, dynamic>? response =
        await ApiMethod(isBasic: true).get(ApiUrls.countryDataResUri);
    if (response != null) {
      CountryDataRes countryDataRes = CountryDataRes.fromJson(response);
      return countryDataRes;
    } else {
      return null;
    }
  }

  static Future<CityDataRes?> getCityData() async {
    Map<String, dynamic>? response =
        await ApiMethod(isBasic: true).get(ApiUrls.cityDataResUri);
    if (response != null) {
      CityDataRes cityDataRes = CityDataRes.fromJson(response);
      return cityDataRes;
    } else {
      return null;
    }
  }

  static Future<LocationDataRes?> getLocationData() async {
    Map<String, dynamic>? response =
        await ApiMethod(isBasic: true).get(ApiUrls.locationDataResUri);
    if (response != null) {
      LocationDataRes locationDataRes = LocationDataRes.fromJson(response);
      return locationDataRes;
    } else {
      return null;
    }
  }

  static Future<CampaignRes?> getCampaign() async {
    Map<String, dynamic>? response =
        await ApiMethod(isBasic: false).get(ApiUrls.campaignUri);
    if (response != null) {
      CampaignRes locationDataRes = CampaignRes.fromJson(response);
      return locationDataRes;
    } else {
      return null;
    }
  }

  static Future<bool> updateProfilePicture({required Map<String, dynamic> body})async{
    Map<String,dynamic>? response = await ApiMethod(isBasic: false).post(ApiUrls.profilePictureUpdateUrl, body);
    if(response != null){
      return true;
    }else{
      return false;
    }
  }


}
