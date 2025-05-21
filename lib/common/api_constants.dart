class ApiConstants {
  ApiConstants._();

  static const String baseUrl = "https://pritam-backend.vercel.app/api/v1";

  /* -------------------------------------------------------------------------- */
  /*                                 Staff URLs                                 */
  /* -------------------------------------------------------------------------- */
  static const String staffLogin = "$baseUrl/staff/login";
  static const String getNewJobsList = "$baseUrl/Staff/getAllNewJob";
  static const String getAllBanner = "$baseUrl/Staff/getAllBanner";
  static const String allNotification = "$baseUrl/staff/allNotification";
}
