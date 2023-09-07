class Config {
  ///api基础地址
  static String baseUrl = "https://www.spiritual-living.net";

  ///api基础地址
  static String domain = "www.spiritual-living.net";

  ///首页
  static String homeUrl = baseUrl;

  ///商店
  static String shopUrl = "$baseUrl/shop";

  ///购物品车
  static String cartUrl = "$baseUrl/cart";

  ///个人中心
  static String persionUrl = "$baseUrl/my-account";

  ///登录请求地址
  static String loginUrl = "api/flutter.php";

  ///远程登录后本地储存的键名
  static String loginInfo = "loginInfo";

  ///間距
  static double space = 15.0;

  ///按鈕高度
  static double buttonHeight = 48.0;

  ///用户地址
  static String mine = "api/mine.php";
}
