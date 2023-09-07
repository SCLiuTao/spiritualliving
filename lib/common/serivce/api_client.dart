// import 'package:dio/dio.dart';

// class Http {
//   static final Http _instance = Http._internal();
//   factory Http() => _instance;

//   static late final Dio dio;
//   final CancelToken _cancelToken =  CancelToken();

//   Http._internal() {
//     BaseOptions options = BaseOptions(
//       baseUrl: 'https://www.example.com/api/',
//       connectTimeout: const Duration(seconds: 5),
//       receiveTimeout: const Duration(seconds: 5),
//     );

//     dio = Dio(options);
//     dio.interceptors.add(
//       InterceptorsWrapper(
//         onRequest: (options, handler) {
//           return handler.next(options);
//         },
//         onResponse: (response, handler) {
//           return handler.next(response);
//         },
//         onError: (e, handler) {
//           return handler.next(e);
//         },
//       ),
//     );
//   }

//   void cancelRequests() {
//     _cancelToken.cancel('cancelled');
//   }

//   Future<Response?> get(String path,
//       {Map<String, dynamic>? params,
//       Options? options,
//       CancelToken? cancelToken}) async {
//     Response? response;
//     try {
//       response = await dio.get(path,
//           queryParameters: params,
//           options: options,
//           cancelToken: cancelToken ?? _cancelToken);
//       return response;
//     } catch (e) {
//       response = null;
//     }
//     return response;
//   }

//   Future<Response?> post(String path,
//       {Map<String, dynamic>? params,
//       dynamic data,
//       Options? options,
//       CancelToken? cancelToken}) async {
//     Response? response;
//     try {
//       response = await dio.post(path,
//           queryParameters: params,
//           data: data,
//           options: options,
//           cancelToken: cancelToken ?? _cancelToken);
//     } catch (e) {
//       response = null;
//     }
//     return response;
//   }
// }

import 'package:dio/dio.dart';

import '../config.dart';
import '../utils/easy_toast.dart';

class ApiClient {
  static String baseUrl = Config.baseUrl;

  static final ApiClient _instance = ApiClient._internal();

  factory ApiClient() => _instance;

  static BaseOptions baseOptions = BaseOptions(
    contentType: "application/x-www-form-urlencoded",
    responseType: ResponseType.plain,
  );

  static late final Dio _dio;

  ApiClient._internal() {
    _dio = Dio(baseOptions);
  }

  /// 发送POST请求
  ///
  /// [path]：API的相对路径
  /// [data]：请求参数
  Future<dynamic> post(
      {required String path, Map<String, dynamic>? data}) async {
    try {
      final response = await _dio.post("$baseUrl/$path", data: data);
      return response.data;
    } catch (e) {
      // 异常处理
      showError("网络连接失败:$e");
      return null;
    }
  }

  /// 发送GET请求
  ///
  /// [path]：API的相对路径
  /// [params]：查询参数
  Future<dynamic> get(
      {required String path, Map<String, dynamic>? params}) async {
    try {
      final response =
          await _dio.get("$baseUrl/$path", queryParameters: params);
      return response.data;
    } catch (e) {
      // 异常处理
      showError("网络连接失败:$e");
      return null;
    }
  }

  /// 上传文件
  ///
  /// [path]：API的相对路径
  /// [file]：待上传的文件
  Future<dynamic> upload(String path, String filePath) async {
    try {
      final file = await MultipartFile.fromFile(filePath);
      final formData = FormData.fromMap({"file": file});
      final response = await _dio.post("$baseUrl/$path", data: formData);
      return response.data;
    } catch (e) {
      // 异常处理
      showError("文件上传失败: $e");
      return null;
    }
  }

  /// 下载文件
  ///
  /// [path]：要下载的文件路径
  /// [savePath]：保存文件的路径
  Future<bool> download(String path, String savePath) async {
    try {
      await _dio.download("$baseUrl/$path", savePath);
      return true;
    } catch (e) {
      // 异常处理
      showError("文件下载失败: $e");
      return false;
    }
  }
}
