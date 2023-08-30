///頁面路徑連結
class ScreenPaths {
  //home
  static String home() => '/home';
  //register
  static String register() => '/home/register';
  //kkboxPage
  static String kkboxPage() => '/home/kkboxPage';
  //detailPage
  static String detailPage({int? index}) => '/home/$index';
  //login
  static String login() => '/login';
  //calendar
  static String calendar() => '/calendar';
  //setting
  static String setting() => '/setting';
}
