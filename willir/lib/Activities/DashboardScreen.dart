import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:willir/Utils/CustomColors.dart';
import 'package:willir/Utils/CustomTextStyle.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  var selectedIndex = 0;
  var _isSelected = false;

  @override
  Widget build(BuildContext context) {
    var totalHeight = MediaQuery
        .of(context)
        .size
        .height;

    var totalWidth = MediaQuery
        .of(context)
        .size
        .width;

    final _containerList = [
      homeContainer(totalWidth),
      profileContainer(totalWidth),
    ];

    return Scaffold(
      appBar: AppBar(
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
      // body: Container(
      //   height: totalHeight,
      //   child:
      // ),
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
                    color: selectedIndex ==0 ? CustomColors.PrimaryColor: CustomColors.Grey,
                    size: 32.0,
                  ),
                ),
                onTap: () {
                  setState(() {
                    selectedIndex = 0;
                  });
                },
              ),
              InkWell(
                child: Container(
                  height: 60,
                  width: 60,
                  child: Icon(Icons.person,
                    color: selectedIndex ==1 ? CustomColors.PrimaryColor: CustomColors.Grey, size: 32.0,),
                ),
                onTap: () {
                  setState(() {
                    selectedIndex = 1;
                  });
                },
              ),
              buildContainerBottomNavSpecial(Icons.calendar_today_outlined),
              buildContainerBottomNav(Icons.credit_card, 2),
              buildContainerBottomNav(Icons.menu, 3),
            ],
          ),
        ),
      ),
    );
  }

  homeContainer(double totalWidth) {
    return Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Most Requested",
                style: CustomTextStyle.AttentionCyan,
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                clipBehavior: Clip.antiAlias,
                child: Container(
                  width: totalWidth,
                  height: 180,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/images/dummy_doc.jpg",
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        color: CustomColors.White,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            "Book Now",
                            style: CustomTextStyle.ButtonTextCyanSmall,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GridView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                children: [
                  buildCard("assets/images/dashboard_checkin.png", "Check In"),
                  buildCard(
                      "assets/images/dashboard_friends.png", "Friends Offer"),
                  buildCard("assets/images/dashboard_pharmacy.png", "Pharmacy"),
                  buildCard(
                      "assets/images/dashboard_service.png", "Our Service"),
                  buildCard(
                      "assets/images/dashboard_doctors.png", "Our Doctors"),
                  buildCard("assets/images/dashboard_video.png",
                      "Live Video Consult"),
                  buildCard("assets/images/dashboard_points.png", "My Points"),
                  buildCard(
                      "assets/images/dashboard_directions.png", "Directions"),
                  buildCard(
                      "assets/images/dashboard_contact.png", "Contact Us"),
                ],
              ),
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

  buildCard(String image, String title) {
    return Container(
        decoration: BoxDecoration(
            color: CustomColors.White,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: CustomColors.Grey, width: 2)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: 40,
              width: 40,
            ),
            SizedBox(height: 5,),
            Text(
              title,
              style: CustomTextStyle.ButtonTextCyanSmall,
              textAlign: TextAlign.center,
            )
          ],
        ));
  }

  profileContainer(double totalWidth) {
    return Container(
      child: Text("Profile Fragment"),
    );
  }
}
