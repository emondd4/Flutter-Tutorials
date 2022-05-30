import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_dio/Model/GetReqModel/UserBaseModel.dart';
import 'package:flutter_dio/Model/PutReqModel/PuttedBaseModel.dart';
import 'package:flutter_dio/Utils/ApiUrls.dart';

class DioClient{
  final Dio _dio = Dio();

  /// Get User Info (Get Request)
  Future<UserBaseModel?> getUser({required String id}) async {
    UserBaseModel? userBaseModel;
    try {
      Response response = await _dio.get(ApiUrls.instance.baseUrl + 'api/users/$id');
      debugPrint('User Info: ${response.data}');
      userBaseModel = UserBaseModel.fromJson(response.data);
    } on DioError catch (e) {
      if (e.response != null) {
        debugPrint('Dio error!');
        debugPrint('STATUS: ${e.response?.statusCode}');
        debugPrint('DATA: ${e.response?.data}');
        debugPrint('HEADERS: ${e.response?.headers}');
      } else {
        debugPrint('Error sending request!');
        debugPrint(e.message);
      }
    }
    return userBaseModel;
  }

  /// Update User Info (PUT Request)
  Future<PuttedBaseModel?> updateUser({required PuttedBaseModel puttedBaseModelParam, required String id,}) async {
    PuttedBaseModel? puttedBaseModel;

    try {
      Response response = await _dio.put(
        ApiUrls.instance.baseUrl + 'api/users/$id',
        data: puttedBaseModelParam.toJson(),
      );

      debugPrint('User updated: ${response.data}');

      puttedBaseModel = PuttedBaseModel.fromJson(response.data);
    } catch (e) {
      debugPrint('Error updating user: $e');
    }

    return puttedBaseModel;
  }

  /// Delete User Info (Delete Request)
  Future<void> deleteUser({required String id}) async {
    try {
      Response response = await _dio.delete(ApiUrls.instance.baseUrl + 'api/users/$id');
      debugPrint('User Info Deleted: ${response.data}');
    } catch (e) {
      debugPrint('Error deleting user: $e');
    }
  }

}