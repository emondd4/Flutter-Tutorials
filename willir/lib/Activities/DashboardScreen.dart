import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:willir/Activities/BottomNavScreens/HomeScreen.dart';
import 'package:willir/Activities/BottomNavScreens/PaymentScreen.dart';
import 'package:willir/Activities/BottomNavScreens/ProfileScreen.dart';
import 'package:willir/Utils/CustomButtonStyle.dart';
import 'package:willir/Utils/CustomColors.dart';
import 'package:willir/Utils/CustomTextStyle.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int selectedIndex = 0;
  bool _visible = true;
  String _title = "";

  @override
  Widget build(BuildContext context) {
    var totalHeight = MediaQuery.of(context).size.height;

    final _containerList = [
      HomeScreen(),
      ProfileScreen(),
      PaymentScreen(),
    ];

    return Scaffold(
      appBar: _visible == false
          ? AppBar(
              automaticallyImplyLeading: false,
              flexibleSpace: SafeArea(
                child: Container(
                  color: CustomColors.White,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 10,),
                      Text(
                        _title,
                        style: CustomTextStyle.ButtonTextMedium,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 14.0, 0, 0),
                        child: Container(
                          height: 5,
                          color: CustomColors.PrimaryColor,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          : AppBar(
              toolbarHeight: 100,
              automaticallyImplyLeading: false,
              flexibleSpace: SafeArea(
                child: Container(
                  color: CustomColors.PrimaryColor,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Mr Mohammad Oitabi",
                          style: CustomTextStyle.ButtonTextWhite,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20.0, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  "Balance: 3500 SA",
                                  style: CustomTextStyle.ButtonTextWhiteSmall,
                                  textAlign: TextAlign.start,
                                ),
                                flex: 1,
                              ),
                              Flexible(
                                child: Text(
                                  "File No: 100376",
                                  style: CustomTextStyle.ButtonTextWhiteSmall,
                                  textAlign: TextAlign.end,
                                ),
                                flex: 1,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
      body: _containerList[selectedIndex],
      bottomNavigationBar: Container(
        height: totalHeight * .09,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              boxShadow: [
                BoxShadow(blurRadius: 20, color: Colors.grey, spreadRadius: 1)
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                child: Container(
                  height: 60,
                  width: 60,
                  child: Icon(
                    Icons.home,
                    color: selectedIndex == 0
                        ? CustomColors.PrimaryColor
                        : CustomColors.Grey,
                    size: 32.0,
                  ),
                ),
                onTap: () {
                  setState(() {
                    _visible = true;
                    selectedIndex = 0;
                  });
                },
              ),
              InkWell(
                child: Container(
                  height: 60,
                  width: 60,
                  child: Icon(
                    Icons.person,
                    color: selectedIndex == 1
                        ? CustomColors.PrimaryColor
                        : CustomColors.Grey,
                    size: 32.0,
                  ),
                ),
                onTap: () {
                  setState(() {
                    _visible = true;
                    selectedIndex = 1;
                  });
                },
              ),
              buildContainerBottomNavSpecial(Icons.calendar_today_outlined),
              InkWell(
                child: Container(
                  height: 60,
                  width: 60,
                  child: Icon(
                    Icons.credit_card,
                    color: selectedIndex == 2
                        ? CustomColors.PrimaryColor
                        : CustomColors.Grey,
                    size: 32.0,
                  ),
                ),
                onTap: () {
                  setState(() {
                    _visible = false;
                    _title = "Online Payment";
                    selectedIndex = 2;
                  });
                },
              ),
              buildContainerBottomNav(Icons.menu, 3),
            ],
          ),
        ),
      ),
    );
  }


  buildContainerBottomNav(IconData icon, int itemNumber) {
    return InkWell(
      child: Container(
        height: 60,
        width: 60,
        child: Icon(
          icon,
          color: CustomColors.Grey,
          size: 32.0,
        ),
      ),
      onTap: () {},
    );
  }

  buildContainerBottomNavSpecial(IconData icon) {
    return Container(
      decoration: BoxDecoration(
          color: CustomColors.PrimaryColor,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: 20, spreadRadius: 1)
          ]),
      height: 50,
      width: 50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: CustomColors.White),
          SizedBox(
            height: 2,
          ),
          Text(
            "Book Now",
            style: TextStyle(fontSize: 7, color: CustomColors.White),
          )
        ],
      ),
    );
  }

}
