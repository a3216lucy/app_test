///頁面路徑連結
class ScreenPaths {
  //home
  static String home() => '/home';
  //register
  static String register() => '/home/register';
  //kkboxPage
  static String kkboxPage() => '/home/kkboxPage';
  //test
  static String test() => '/home/test';
  //detailPage
  static String detailPage({int? index}) => '/home/$index';
  //login
  static String login() => '/login';
  //posts
  static String posts() => '/posts';
  //setting
  static String setting() => '/setting';
}
