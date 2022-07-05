import 'package:flutter/material.dart';
import 'package:signalr_client_example/data/ProdutListData.dart';
import 'package:signalr_client_example/model/ProductListModel.dart';
import 'package:signalr_netcore/hub_connection.dart';
import 'package:signalr_netcore/hub_connection_builder.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  late ProductListData productListData;
  final hubConnection = HubConnectionBuilder().withUrl("https://signalr.bitlance.xyz/signalServer").build();

  @override
  void initState(){
    productListData = ProductListData(ValueNotifier ([]));
    startHub();
    loadProductList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    hubConnection.on("refreshProducts", (arguments) {
      loadProductList();
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ValueListenableBuilder(
          valueListenable: productListData.fetchedCompanyDataValue,
          builder: (context,value,child) {
            return productListData.fetchedCompanyDataValue.value.isNotEmpty == true
                ? ListView.builder(itemBuilder: (context,index) => ListItem(index),itemCount: productListData.fetchedCompanyDataValue.value.length,)
                : SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: const Center(
                child: Text("Products Loading..."),
              ),
            );
          }) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget ListItem(int index){
    return Padding(padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Name: ${productListData.fetchedCompanyDataValue.value[index]?.name}",style: TextStyle(color: Colors.black, fontSize: 18.0),),
          Text("Id: ${productListData.fetchedCompanyDataValue.value[index]?.id}",style: TextStyle(color: Colors.black, fontSize: 15.0),),
          Text("Price: ${productListData.fetchedCompanyDataValue.value[index]?.price}",style: TextStyle(color: Colors.black, fontSize: 15.0),),
        ],
      ),
    );
  }

  void loadProductList() async{
    try {
      var response = await Dio().get('https://signalr.bitlance.xyz/Home/GetProducts');
      print("Response $response");
      productListData.fetchedCompanyDataValue.value = response.data.map<ProductListBaseModel>((item) => ProductListBaseModel.fromJson(item)).toList();
      print("ProductListDataClass ${productListData.fetchedCompanyDataValue}");
    } catch (e) {
      print(e);
    }
  }

  void startHub() async{
    try{
      await hubConnection.start()?.then((value) => {print("Hub Connected")});
    }catch (e){
      print("Starting Exception $e");
    }

    print("Hub Connection Id: ${hubConnection.connectionId}");
  }

}
