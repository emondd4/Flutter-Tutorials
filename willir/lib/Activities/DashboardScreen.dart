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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                height: 100,
                color: CustomColors.PrimaryColor,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Text(
                        "Mr Mohammad Oitabi",
                        style: CustomTextStyle.ButtonTextWhite,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20.0, 0, 10.0),
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
              Container(

                width: MediaQuery.of(context).size.width,
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

                        SizedBox(height: 10,),

                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          clipBehavior: Clip.antiAlias,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 150,
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
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                  color: CustomColors.White,
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text("Book Now", style: CustomTextStyle.ButtonTextCyanSmall,),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: 10,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 90,
                              height: 110,
                              decoration: BoxDecoration(
                                color: CustomColors.White,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: CustomColors.Grey,width: 2)
                              ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/images/dashboard_checkin.png', height: 60,),
                                    SizedBox(height: 10,),
                                    Text('Check In', style: CustomTextStyle.ButtonTextCyanSmall,)
                                  ],
                                )
                            ),
                            Container(
                                width: 90,
                                height: 110,
                                decoration: BoxDecoration(
                                    color: CustomColors.White,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: CustomColors.Grey,width: 2)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/images/dashboard_friends.png', height: 60,),
                                    SizedBox(height: 10,),
                                    Text('Friends Offer', style: CustomTextStyle.ButtonTextCyanSmall,)
                                  ],
                                )
                            ),
                            Container(
                                width: 90,
                                height: 110,
                                decoration: BoxDecoration(
                                    color: CustomColors.White,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: CustomColors.Grey,width: 2)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/images/dashboard_pharmacy.png', height: 60,),
                                    SizedBox(height: 10,),
                                    Text('Pharmacy', style: CustomTextStyle.ButtonTextCyanSmall,)
                                  ],
                                )
                            ),
                          ],
                        ),

                        SizedBox(height: 10,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                width: 90,
                                height: 110,
                                decoration: BoxDecoration(
                                    color: CustomColors.White,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: CustomColors.Grey,width: 2)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/images/dashboard_service.png', height: 60,),
                                    SizedBox(height: 10,),
                                    Text('Our Services', style: CustomTextStyle.ButtonTextCyanSmall,)
                                  ],
                                )
                            ),
                            Container(
                                width: 90,
                                height: 110,
                                decoration: BoxDecoration(
                                    color: CustomColors.White,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: CustomColors.Grey,width: 2)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/images/dashboard_doctors.png', height: 60,),
                                    SizedBox(height: 10,),
                                    Text('Our Doctors', style: CustomTextStyle.ButtonTextCyanSmall,)
                                  ],
                                )
                            ),
                            Container(
                                width: 90,
                                height: 110,
                                decoration: BoxDecoration(
                                    color: CustomColors.White,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: CustomColors.Grey,width: 2)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/images/dashboard_video.png', height: 60,),
                                    SizedBox(height: 10,),
                                    Text('Live Video Consult', style: CustomTextStyle.ButtonTextCyanSmall, textAlign: TextAlign.center,)
                                  ],
                                )
                            ),
                          ],
                        ),

                        SizedBox(height: 10,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                width: 90,
                                height: 110,
                                decoration: BoxDecoration(
                                    color: CustomColors.White,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: CustomColors.Grey,width: 2)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/images/dashboard_points.png', height: 60,),
                                    SizedBox(height: 10,),
                                    Text('My Points', style: CustomTextStyle.ButtonTextCyanSmall,)
                                  ],
                                )
                            ),
                            Container(
                                width: 90,
                                height: 110,
                                decoration: BoxDecoration(
                                    color: CustomColors.White,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: CustomColors.Grey,width: 2)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/images/dashboard_directions.png', height: 60,),
                                    SizedBox(height: 10,),
                                    Text('Directions', style: CustomTextStyle.ButtonTextCyanSmall,)
                                  ],
                                )
                            ),
                            Container(
                                width: 90,
                                height: 110,
                                decoration: BoxDecoration(
                                    color: CustomColors.White,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: CustomColors.Grey,width: 2)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/images/dashboard_contact.png', height: 60,),
                                    SizedBox(height: 10,),
                                    Text('Contact Us', style: CustomTextStyle.ButtonTextCyanSmall,)
                                  ],
                                )
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
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
              buildContainerBottomNav(Icons.home, isSelected: true),
              buildContainerBottomNav(Icons.person),
              buildContainerBottomNavSpecial(Icons.calendar_today_outlined),
              buildContainerBottomNav(Icons.credit_card),
              buildContainerBottomNav(Icons.menu),
            ],
          ),
        ),
      ),
    );
  }

  buildContainerBottomNav(IconData icon, {isSelected = false}) {
    return Container(
      height: 50,
      width: 50,
      child: Icon(icon,
          color: isSelected ? CustomColors.PrimaryColor : CustomColors.Grey),
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
