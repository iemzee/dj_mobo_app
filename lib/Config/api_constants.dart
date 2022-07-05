class APIConstants {
  static const String _baseUrl = "https://moboapi.azurewebsites.net/api/";
  static const String _portal = "smartpgx/";
  static const String _tokenRequestEndpoint = "Account/Patient/GetTokenByCredentials";
  static const String tokenRequestURL = "$_baseUrl$_portal$_tokenRequestEndpoint";
}
