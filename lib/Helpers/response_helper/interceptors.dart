import 'package:dio/dio.dart';
import 'package:untitled/Helpers/Utils/logger.dart';

class AppInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // timeout for all requests
    options.sendTimeout = 30000;
    options.connectTimeout = 30000;
    options.receiveTimeout = 30000;
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.statusCode! >= 200 && response.statusCode! < 300) {
      debugLog("Yes Successful response");
    } else {
      debugLog("Wahala Dey");
    }
    return super.onResponse(response, handler);
  }
}
