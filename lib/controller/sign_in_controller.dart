import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../common/serivce/api_client.dart';
import '../common/config.dart';
import '../common/utils/easy_toast.dart';
import '../common/utils/ios_dialog.dart';
import '../common/utils/storage_manage.dart';
import '../routes/app_pages.dart';

class SignInController extends GetxController
    with GetSingleTickerProviderStateMixin {
  StorageManage storageManage = StorageManage();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  final TextEditingController nameCtl = TextEditingController();
  final TextEditingController pwdCtl = TextEditingController();
  RxBool isShowPassword = true.obs;
  late AnimationController animationController;

  @override
  void onInit() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..repeat(reverse: true);
    var loginInfo = storageManage.read(Config.loginInfo);
    if (loginInfo != null) {
      Map loginInfoMap = jsonDecode(loginInfo);
      if (loginInfoMap['loginType'] == "normal") {
        nameCtl.text = loginInfoMap['user_name'] ?? "";
        pwdCtl.text = loginInfoMap['user_password'] ?? "";
      }
    }
    isShowPassword.value = true;

    super.onInit();
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }

  ///判断登录信息是否存在，且在登录状态时直接进入webview

  void checkLogin() {
    var loginInfo = storageManage.read(Config.loginInfo);
    if (loginInfo != null) {
      Map loginInfoMap = jsonDecode(loginInfo);
      if (loginInfoMap["islogin"]) {
        Get.offAndToNamed(Routes.webpage);
      }
    }
  }

  ///普通登錄
  Future<void> normalLogin() async {
    Map<String, dynamic>? loginData;
    String name = nameCtl.text;
    String pwd = pwdCtl.text;
    loginData = {
      "displayName": name,
      "pwd": pwd,
      "loginType": "normal",
    };

    //执行远程登录
    remoteLogin(
      data: loginData,
      loginType: 'normal',
    );
  }

  /// 第三方登录
  /// loginType 登录类型

  Future<void> handleSignIn({required String loginType}) async {
    Map<String, dynamic>? loginData;

    try {
      if (loginType == "google") {
        UserCredential? auth = await signInWithGoogle();
        if (auth != null) {
          User? user = auth.user;
          if (user != null) {
            googleWithSignOut();
            String? displayName = user.displayName!
                .replaceAll(RegExp(r'\s+'), " ")
                .replaceAll(" ", "-");
            String? email = user.email;
            loginData = {
              "displayName": displayName,
              "email": email,
              "loginType": loginType,
            };
          }
        }
      } else if (loginType == "facebook") {
        UserCredential? auth = await signInWithFacebook();
        if (auth != null) {
          User? user = auth.user;
          if (user != null) {
            facebookWithSignOut();
            String? displayName = user.displayName!
                .replaceAll(RegExp(r'\s+'), " ")
                .replaceAll(" ", "-");
            String? email = user.email;
            loginData = {
              "displayName": displayName,
              "email": email,
              "loginType": loginType,
            };
          }
        }
      } else if (loginType == "apple") {
        UserCredential? auth = await signInWithApple();

        if (auth != null) {
          User? user = auth.user;
          if (user != null) {
            String? displayName = user.displayName;
            String? email = user.email;
            loginData = {
              "displayName": displayName,
              "email": email,
              "loginType": loginType,
            };
          }
        }
      } else if (loginType == "twitter") {
        UserCredential? auth = await signInWithTwitter();

        User? user = auth.user;
        if (user != null) {
          String? displayName = user.displayName;
          String? email = user.email;
          loginData = {
            "displayName": displayName,
            "email": email,
            "loginType": loginType,
          };
        }
      } else if (loginType == "normal") {
        String name = nameCtl.text;
        String pwd = pwdCtl.text;
        loginData = {
          "displayName": name,
          "pwd": pwd,
          "loginType": loginType,
        };
      }
      if (loginData != null) {
        //执行远程登录
        remoteLogin(
          data: loginData,
          loginType: loginType,
        );
      }
    } catch (e) {
      if (loginType == "google") {
        googleWithSignOut();
      }
      if (loginType == "facebook") {
        googleWithSignOut();
      }
      showError("登錄失敗");
    }
  }

  ///远程登录，获取登录信息
  void remoteLogin(
      {required Map<String, dynamic> data, required String loginType}) async {
    if (loginType == "normal") {
      showloading("登錄中");
    } else {
      showloading("授權成功,登錄中");
    }

    ApiClient apiClient = ApiClient();
    var ret = await apiClient.post(path: Config.loginUrl, data: data);
    if (EasyLoading.isShow) {
      EasyLoading.dismiss();
    }
    if (ret != null) {
      Map<String, dynamic> remoteLoginRet = jsonDecode(ret);
      if (remoteLoginRet["code"] == 200) {
        saveRemoteInfo(remoteData: remoteLoginRet, loginType: loginType);

        Get.offAndToNamed(Routes.webpage);
      } else if (remoteLoginRet["code"] == 202) {
        //只有普通註冊時，賬號不存在才返回202
        iosDialog(
            context: Get.context!,
            content: "賬號不存在，是否繼續註冊",
            confirm: () {
              Get.back(); //關閉對話框
              showloading("註冊中"); //彈出對話框
              if (!data.containsKey("isContinue")) {
                data.putIfAbsent("isContinue", () => true); //添加繼續註冊標識，後台識別
              }
              remoteLogin(data: data, loginType: "normal"); //再次調用遠程登錄
            });
      } else {
        if (loginType == "google") {
          googleWithSignOut();
        }
        showError("登錄失敗");
      }
    } else {
      if (loginType == "google") {
        googleWithSignOut();
      }
      if (loginType == "facebook") {
        googleWithSignOut();
      }
      showError("登錄失敗");
    }
  }

  ///保存远程信息
  void saveRemoteInfo({required Map remoteData, required String loginType}) {
    //print(remoteData);
    final String cookieName = "wordpress_logged_in_${remoteData["cookieHash"]}";
    final String cookieValue = remoteData["cookieValue"];
    final int userID = remoteData["userID"];
    var loginInfo = {
      "loginType": loginType,
      "cookieName": cookieName,
      "cookieValue": cookieValue,
      "userID": userID,
      "islogin": true,
    };
    if (loginType == "normal") {
      //如果是普通登录，存入用户名与密码
      loginInfo.putIfAbsent("user_name", () => nameCtl.text);
      loginInfo.putIfAbsent("user_password", () => pwdCtl.text);
    }
    storageManage.delete(Config.loginInfo);
    storageManage.save(Config.loginInfo, jsonEncode(loginInfo));
  }

  ///google登录，并将信息存储在firebase
  Future<UserCredential?> signInWithGoogle() async {
    final GoogleSignInAccount? googleSignInAccount =
        await GoogleSignIn().signIn();
    if (googleSignInAccount == null) {
      return null;
    } else {
      final GoogleSignInAuthentication googleAuth =
          await googleSignInAccount.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      return await FirebaseAuth.instance.signInWithCredential(credential);
    }
  }

  /// facebook登錄
  Future<UserCredential?> signInWithFacebook() async {
    final LoginResult loginResult = await FacebookAuth.instance.login();
    //print("===========>${loginResult.status}");
    if (loginResult.status == LoginStatus.cancelled) {
      showError("用戶取消登錄");
      return null;
    } else if (loginResult.status == LoginStatus.failed) {
      showError("驗證失敗");
      return null;
    } else {
      final OAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(loginResult.accessToken!.token);
      return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
    }
  }

  ///推特登录
  Future<UserCredential> signInWithTwitter() async {
    TwitterAuthProvider twitterProvider = TwitterAuthProvider();
    if (kIsWeb) {
      return await FirebaseAuth.instance.signInWithPopup(twitterProvider);
    } else {
      return await FirebaseAuth.instance.signInWithProvider(twitterProvider);
    }
  }

  /// apple登錄
  Future<UserCredential?> signInWithApple() async {
    final appleProvider = AppleAuthProvider();
    if (kIsWeb) {
      return await FirebaseAuth.instance.signInWithPopup(appleProvider);
    } else {
      return await FirebaseAuth.instance.signInWithProvider(appleProvider);
    }
  }

  ///退出google登录
  Future<GoogleSignInAccount?> googleWithSignOut() async {
    try {
      final GoogleSignIn googleSignIn = GoogleSignIn();
      return await googleSignIn.signOut();
    } catch (e) {
      return null;
    }
  }

  ///退出facebook
  Future<void> facebookWithSignOut() async {
    try {
      final FacebookAuth facebookAuth = FacebookAuth.instance;
      return await facebookAuth.logOut();
    } catch (e) {
      return;
    }
  }
}
