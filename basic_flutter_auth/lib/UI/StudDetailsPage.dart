import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../Utils/Utils.dart';

class StudDetailsScreen extends StatefulWidget {
  const StudDetailsScreen({Key? key}) : super(key: key);

  @override
  State<StudDetailsScreen> createState() => _StudDetailsScreenState();
}

class _StudDetailsScreenState extends State<StudDetailsScreen> {

  @override
  void initState() {
    _apiCall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Text("Details"),
        ),
      ),
    );
  }

  _apiCall() async {

    var dio = Dio();

    String basicAuth = "Bearer eyJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJHdWFyZGlhbiBQb3J0YWwiLCJzdWIiOiIyMDAwMTFfMTkxNCIsImV4cCI6MTY1NDExMzg5MSwiaWF0IjoxNjU0MDc3ODkxLCJzY29wZSI6IkdVQVJESUFOIn0.N8QhX5WhgnyKQvowt8Sdswfn-cmZ3M435qMsk34RgNQomBm6MTRuBeceVNHVoj5d9i869U5GgEZFq6JKFv2TKvSnPN57uPEcL2ocV8ho8y6wgjfJVeIQFJT3ARG7OEgmfSmofTivBa5AaoNqPzZiK7pp2cPo0AT2FfqHfG8kw-daPJlRc_x16zUFPrg1ypE_fiOP24FERaSiTcyJYSh1xSXCPKWsp56W8vN7ijfS7VZhdZVw9GAOFQhJBjJadpOTVEjYlP4LyQEoZmY1giOqz2VNhHDnNn4M8HFhrQZoUU9BOSV8ipljjsgQcBBEaVhgRWQQ68YqX5wqxnzI_MRPdA";

    dio.options.headers["authorization"] = basicAuth;

    try{
      final response = await dio.get(ApiUtils.baseUrl+ApiUtils.studDetails);
      debugPrint(response.toString());
    }on DioError catch(e){
      if (e.type == DioErrorType.response) {
        print('catched');
        return;
      }
      if (e.type == DioErrorType.connectTimeout) {
        print('check your connection');
        return;
      }

      if (e.type == DioErrorType.receiveTimeout) {
        print('unable to connect to the server');
        return;
      }

      if (e.type == DioErrorType.other) {
        print('Something went wrong');
        return;
      }
      print(e);
    }catch (e) {
      print(e);
    }

  }

}
