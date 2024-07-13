class ApiConstants {
  static const String apiBaseUrl = "https://api.themoviedb.org/3/";
  static const String apiKey = "7c0f8bb27ceaedd5596696974bdf16d9";
  static const String list = "movie/popular?api_key=$apiKey";
  static const String search ="search/movie?api_key=$apiKey"; 
      
  static String searchWithQuery(String query) {
    return "$search&query=$query";
  }
}

class ApiErrors {
  static const String badRequestError = "badRequestError";
  static const String noContent = "noContent";
  static const String forbiddenError = "forbiddenError";
  static const String unauthorizedError = "unauthorizedError";
  static const String notFoundError = "notFoundError";
  static const String conflictError = "conflictError";
  static const String internalServerError = "internalServerError";
  static const String unknownError = "unknownError";
  static const String timeoutError = "timeoutError";
  static const String defaultError = "defaultError";
  static const String cacheError = "cacheError";
  static const String noInternetError = "noInternetError";
  static const String loadingMessage = "loading_message";
  static const String retryAgainMessage = "retry_again_message";
  static const String ok = "Ok";
}
