import 'package:dio/dio.dart';
import 'package:seller_app/features/authentication/auth.dart';


Dio dio() {
  var dio = Dio(BaseOptions(
      baseUrl: 'http://192.168.0.5:8000/api',
      connectTimeout: 10000,
      receiveTimeout: 10000,
      responseType: ResponseType.plain,
      headers: {
        'accept': 'application/json',
        'content-type': 'application/json',
        'connection': 'keep-alive',
        'accept-encoding': 'gzip, deflate, br',
      }));

  //dio.interceptors.add(InterceptorsWrapper(
   // onRequest: (options, handler) {
    //  requestInterceptor(options);
   //   return handler.next(options);
   // },
  //)


  return dio;
}

//dynamic requestInterceptor(RequestOptions options) async {
//  if (options.headers.containsKey('auth')) {
//    var token = await Auth().getToken();
//    options.headers.addAll({'Authorization': 'Bearer $token'}
//    );
//  }
//}
