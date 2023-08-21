import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import '../common/serivce/api_client.dart';
import '../common/config.dart';
import '../common/utils/easy_toast.dart';
import '../common/utils/ios_dialog.dart';
import '../common/utils/storage_manage.dart';
import '../routes/app_pages.dart';

class SignInController2 extends GetxController
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

  ///google登录
  Future<void> loginWithGoogle() async {
    //String? googleLoginInfo = storageManage.read(Config.googleLoginData);
    Map<String, dynamic>? loginData;
    //调用google登录
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      //if (googleLoginInfo == null) {
      if (googleUser != null) {
        String? firstName = googleUser.displayName;
        String? email = googleUser.email;
        loginData = {
          "firstName": firstName,
          "email": email,
          "loginType": "google",
        };
        //storageManage.save(Config.googleLoginData, jsonEncode(loginData));
        //}
      }
      // else {
      //   //用户信息存在直接远程登录
      //   loginData = jsonDecode(googleLoginInfo);
      // }
      if (loginData != null) {
        //执行远程登录
        remoteLogin(
          data: loginData,
          loginType: 'google',
        );
      }
    } on PlatformException catch (e) {
      print(e.message);
    } catch (e) {
      showError("登錄失敗");
    }
  }

  ///IOS ID登录
  Future<void> loginWithApple() async {
    if (await SignInWithApple.isAvailable()) {
      try {
        //String? appleLoginInfo = storageManage.read(Config.appleLoginData);
        Map<String, dynamic>? loginData;
        final credential = await SignInWithApple.getAppleIDCredential(
          scopes: [
            AppleIDAuthorizationScopes.email,
            AppleIDAuthorizationScopes.fullName,
          ],
        );
        print(credential);
        //if (appleLoginInfo == null) {
        final String? givenName = credential.givenName;
        final String? familyName = credential.familyName;
        final String? email = credential.email;
        final String firstName = givenName! + familyName!;

        if (firstName.isNotEmpty || email!.isNotEmpty) {
          loginData = {
            "firstName": firstName,
            "email": email,
            "loginType": "apple",
          };
          // storageManage.save(Config.appleLoginData, jsonEncode(loginData));
        }
        //}
        // else {
        //   //用户信息存在直接远程登录
        //   loginData = jsonDecode(appleLoginInfo);
        // }
        if (loginData != null) {
          //print("====>$loginData");
          //执行远程登录
          remoteLogin(
            data: loginData,
            loginType: 'apple',
          );
        }
      } catch (e) {
        showError("用戶取消登錄");
      }
    } else {
      showError("設備不支持");
    }
  }

  ///普通登錄
  Future<void> normalLogin() async {
    Map<String, dynamic>? loginData;
    String name = nameCtl.text;
    String pwd = pwdCtl.text;
    loginData = {
      "firstName": name,
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

  // Future<void> handleSignIn({required String loginType}) async {
  //       Map<String, dynamic>? loginData;
  //   //获取用户登录信息
  //   try {
  //     if (loginType == "google") {
  //       //loginWithGoogle();
  //       signInWithGoogle();
  //     } else if (loginType == "facebook") {
  //       // 触发登录流程
  //       final FacebookAuth facebookAuth = FacebookAuth.instance;
  //       await facebookAuth.login(permissions: ['email', 'public_profile']);
  //       // 获取用户个人信息
  //       var userDate = facebookAuth.getUserData();
  //       print('===$userDate');
  //     } else if (loginType == "apple") {
  //       loginWithApple();
  //     } else {
  //       showloading("登錄中");
  //       normalLogin();
  //     }
  //   } catch (e) {
  //     showError("登錄失敗");
  //   }
  // }
  Future<void> handleSignIn({required String loginType}) async {
    Map<String, dynamic>? loginData;
    //获取用户登录信息
    try {
      if (loginType == "google") {
        UserCredential? auth = await signInWithGoogle();
        if (auth != null) {
          User? user = auth.user;
          if (user != null) {
            googleWithSignOut();
            String? firstName = user.displayName;
            String? email = user.email;
            loginData = {
              "firstName": firstName,
              "email": email,
              "loginType": "google",
            };
          }
        }
      } else if (loginType == "facebook") {
        UserCredential? auth = await signInWithGoogle();
        if (auth != null) {
          User? user = auth.user;
          if (user != null) {
            googleWithSignOut();
            String? firstName = user.displayName;
            String? email = user.email;
            loginData = {
              "firstName": firstName,
              "email": email,
              "loginType": "google",
            };
          }
        }
      }
      if (loginData != null) {
        //执行远程登录
        remoteLogin(
          data: loginData,
          loginType: 'google',
        );
      }
    } catch (e) {
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
    if (ret != null) {
      Map<String, dynamic> remoteLoginRet = jsonDecode(ret);
      if (remoteLoginRet["code"] == 200) {
        saveRemoteInfo(remoteData: remoteLoginRet, loginType: loginType);
        showSuccess("登錄成功", showTime: 1);

        //跳转到webview
        if (loginType == "google") {
          //退出google登錄
          googleWithSignOut();
        }
        if (loginType == "facebook") {
          facebookWithSignOut();
        }

        Get.offAndToNamed(Routes.webpage);
      } else if (remoteLoginRet["code"] == 202) {
        //只有普通註冊時，賬號不存在才返回202
        if (EasyLoading.isShow) {
          EasyLoading.dismiss();
        }
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
        if (EasyLoading.isShow) {
          EasyLoading.dismiss();
        }
        if (loginType == "google") {
          googleWithSignOut();
        }
        showError("登錄失敗");
      }
    } else {
      if (loginType == "google") {
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
      "loginCookie": "$cookieName=$cookieValue",
      "userID": userID,
    };
    if (loginType == "normal") {
      //如果是普通登录，存入用户名与密码
      loginInfo.putIfAbsent("user_name", () => nameCtl.text);
      loginInfo.putIfAbsent("user_password", () => pwdCtl.text);
    }
    storageManage.delete(Config.loginInfo);
    storageManage.save(Config.loginInfo, jsonEncode(loginInfo));
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

  /// facebook登錄
  Future<void> signInWithFacebook() async {
    final FacebookAuth facebookAuth = FacebookAuth.instance;
    final LoginResult loginResult =
        await facebookAuth.login(permissions: ['email', 'public_profile']);
    if (loginResult.status == LoginStatus.success) {
      final userData = await facebookAuth.getUserData();
      print(userData);
      Map<String, dynamic> loginData = {
        "firstName": userData["name"],
        "email": userData["email"],
        "loginType": "facebook",
      };
      //执行远程登录
      remoteLogin(
        data: loginData,
        loginType: 'facebook',
      );
    } else if (loginResult.status == LoginStatus.cancelled) {
      showError("用戶取消登錄");
    } else if (loginResult.status == LoginStatus.failed) {
      showError("登錄失敗");
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

  Future<UserCredential> signInWithApple() async {
    final appleProvider = AppleAuthProvider();
    if (kIsWeb) {
      return await FirebaseAuth.instance.signInWithPopup(appleProvider);
    } else {
      return await FirebaseAuth.instance.signInWithProvider(appleProvider);
    }
  }

  //google登录，并将信息存储在firebase
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
}
