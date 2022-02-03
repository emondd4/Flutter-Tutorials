import 'package:flutter/material.dart';
import 'package:flutter_http_provider/ModelClass/data_class.dart';
import 'package:flutter_http_provider/ProviderClass/ProviderClass.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  hitApi() async{
    DataClass data = await Provider.of<ProviderClass>(context).hitApi();
    Provider.of<ProviderClass>(context).setData(data);
  }

  @override
  Widget build(BuildContext context) {
    hitApi();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Http Example"),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
        shadowColor: Colors.deepOrange,
      ),
      body: ListView.builder(
        itemCount: Provider.of<ProviderClass>(context).getData().length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text(Provider.of<ProviderClass>(context).getData().index),
          );
        },
      ),
    );
  }
}
