import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

late PageController _tabController;

class _HomePageState extends State<HomePage>{

  int tabPosition = 0;

  List<String> tabTitle = ["Delivery To","Pick Up","Dine In"];
  List<Icon> tabBody = [Icon(Icons.directions_car), Icon(Icons.directions_transit), Icon(Icons.directions_bike),];

  @override
  void initState() {
    _tabController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  Widget TabItem(double width, int position, List<String> tabTitle) {
    return InkWell(
      onTap: () {
        setState(() {
          tabPosition = position;
          _tabController.animateToPage(position, duration: const Duration(milliseconds: 10), curve: Curves.linear);
        });
      },
      child: Container(
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: tabPosition == position ? Colors.yellow : Colors.transparent
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            tabPosition == position ? const CircleAvatar(radius: 10, backgroundColor: Colors.red,) : Container(),
            const SizedBox(width: 5,),
            Text(tabTitle[position])
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.blue
                  ),
                  child: LayoutBuilder(
                    builder: (context, constraints){
                      var width = (constraints.maxWidth/3);
                      return ListView.builder(itemBuilder: (context,position) => TabItem(width, position,tabTitle),itemCount: tabTitle.length,scrollDirection: Axis.horizontal,);
                    }),
                  ),
                Expanded(child: PageView(
                  controller: _tabController,
                  children: [
                    tabBody[tabPosition]
                  ])
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
