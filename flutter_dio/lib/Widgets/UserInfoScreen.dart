import 'package:flutter/material.dart';

import '../Dio/DioClient.dart';
import '../Model/GetReqModel/Data.dart';
import '../Model/GetReqModel/UserBaseModel.dart';

class UserInfoPage extends StatefulWidget {
  const UserInfoPage({Key? key}) : super(key: key);

  @override
  State<UserInfoPage> createState() => _UserInfoPageState();
}

class _UserInfoPageState extends State<UserInfoPage> {

  final DioClient _client = DioClient();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dio Get"),centerTitle: true
      ),
      body: Center(
        child: FutureBuilder<UserBaseModel?>(
          future: _client.getUser(id: '1'),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              UserBaseModel? userBaseModel = snapshot.data;
              if (userBaseModel != null) {
                Data? userData = userBaseModel.data;
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.network(userData?.avatar ?? ''),
                    const SizedBox(height: 8.0),
                    Text(
                      '${userBaseModel.data!.firstName} ${userBaseModel.data!.lastName}',
                      style: const TextStyle(fontSize: 16.0),
                    ),
                    Text(
                      userData?.email ?? "",
                      style: const TextStyle(fontSize: 16.0),
                    ),
                  ],
                );
              }
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
