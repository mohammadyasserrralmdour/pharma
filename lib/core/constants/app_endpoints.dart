abstract class AppEndpoints {
  // static const String baseUrl = "10.0.2.2:8000"; // For Emulator
  static const String baseUrl = "https://pharmaplus.microtechdev.com";
                                //'https://pharmaplus.microtechdev.com/api/v1/login'
   // For A34
  static const String apiVersion = "/api/v1/";

  static const String getCategoriesAsPair = "/category/get_categories_as_pair";

  //-------------------------------------------

  // Authentication Routes
  static const String register = "$apiVersion/register";
  static const String login = "$apiVersion/login";
  static const String logout = "$apiVersion/logout";

  //-------------------------------------------

  static const String getHome = "$apiVersion/get_home";
  static const String getExperts = "$apiVersion/get_experts";
////-------------------------------------------
}
