import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
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

  List names = ["Emon Hossain","Akteruzzaman", "Mehedi Hasan Rashed","Cse Sajib Saha","Prinon Bhowmik","Shihasish Paul Pappu","Abul Kalam Azad"];

  @override
  Widget build(BuildContext context) {
    var totalHeight = MediaQuery.of(context).size.height;

    var totalWidth = MediaQuery.of(context).size.width;

    final _containerList = [
      homeContainer(totalWidth),
      profileContainer(totalWidth),
      paymentContainer(totalWidth),
      dashboardCheckInContainer(totalWidth),
      dashboardContactUsContainer(totalWidth),
      dashboardMyPointsContainer(totalWidth),
      dashboardOurDoctors(totalWidth),
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
                  InkWell(
                    child: Container(
                        decoration: BoxDecoration(
                            color: CustomColors.White,
                            borderRadius: BorderRadius.circular(10),
                            border:
                                Border.all(color: CustomColors.Grey, width: 2)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/dashboard_checkin.png",
                              height: 40,
                              width: 40,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Check In",
                              style: CustomTextStyle.ButtonTextCyanSmall,
                              textAlign: TextAlign.center,
                            )
                          ],
                        )),
                    onTap: () {
                      setState(() {
                        _visible = false;
                        _title = "Check In";
                        selectedIndex = 3;
                      });
                    },
                  ),
                  //buildCard("assets/images/dashboard_checkin.png", "Check In"),
                  buildCard("assets/images/dashboard_friends.png", "Friends Offer"),
                  buildCard("assets/images/dashboard_pharmacy.png", "Pharmacy"),
                  buildCard(
                      "assets/images/dashboard_service.png", "Our Service"),
                  InkWell(
                    child: Container(
                        decoration: BoxDecoration(
                            color: CustomColors.White,
                            borderRadius: BorderRadius.circular(10),
                            border:
                            Border.all(color: CustomColors.Grey, width: 2)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/dashboard_doctors.png",
                              height: 40,
                              width: 40,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Our Doctors",
                              style: CustomTextStyle.ButtonTextCyanSmall,
                              textAlign: TextAlign.center,
                            )
                          ],
                        )),
                    onTap: () {
                      setState(() {
                        _visible = false;
                        _title = "Our Doctors";
                        selectedIndex = 6;
                      });
                    },
                  ),
                  // buildCard("assets/images/dashboard_doctors.png", "Our Doctors"),
                  buildCard("assets/images/dashboard_video.png",
                      "Live Video Consult"),
                  InkWell(
                    child: Container(
                        decoration: BoxDecoration(
                            color: CustomColors.White,
                            borderRadius: BorderRadius.circular(10),
                            border:
                            Border.all(color: CustomColors.Grey, width: 2)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/dashboard_points.png",
                              height: 40,
                              width: 40,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "My Points",
                              style: CustomTextStyle.ButtonTextCyanSmall,
                              textAlign: TextAlign.center,
                            )
                          ],
                        )),
                    onTap: () {
                      setState(() {
                        _visible = false;
                        _title = "My Points";
                        selectedIndex = 5;
                      });
                    },
                  ),
                  // buildCard("assets/images/dashboard_points.png", "My Points"),
                  buildCard(
                      "assets/images/dashboard_directions.png", "Directions"),
                  InkWell(
                    child: Container(
                        decoration: BoxDecoration(
                            color: CustomColors.White,
                            borderRadius: BorderRadius.circular(10),
                            border:
                            Border.all(color: CustomColors.Grey, width: 2)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/dashboard_contact.png",
                              height: 40,
                              width: 40,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Contact Us",
                              style: CustomTextStyle.ButtonTextCyanSmall,
                              textAlign: TextAlign.center,
                            )
                          ],
                        )),
                    onTap: () {
                      setState(() {
                        _visible = false;
                        _title = "Contact Us";
                        selectedIndex = 4;
                      });
                    },
                  ),
                  //buildCard("assets/images/dashboard_contact.png", "Contact Us"),
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
            SizedBox(
              height: 5,
            ),
            Text(
              title,
              style: CustomTextStyle.ButtonTextCyanSmall,
              textAlign: TextAlign.center,
            )
          ],
        ));
  }

  buildProfileCard(String image, String title) {
    return Container(
        decoration: BoxDecoration(
            color: CustomColors.White,
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: CustomColors.PrimaryColor, width: 2)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: 40,
              width: 40,
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 5.0),
              child: Text(
                title,
                style: CustomTextStyle.CardTextCyanSmall,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ));
  }

  profileContainer(double totalWidth) {
    return Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: GridView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 30,
                      mainAxisSpacing: 30),
                  children: [
                    buildProfileCard(
                        "assets/images/dashboard_doctors.png", "My Doctors"),
                    buildProfileCard("assets/images/profile_appointments.png",
                        "My Appointments"),
                    buildProfileCard(
                        "assets/images/profile_vital_sign.png", "Vital Signs"),
                    buildProfileCard("assets/images/profile_appointments.png",
                        "Prescription"),
                    buildProfileCard(
                        "assets/images/profile_bills.png", "My Bills"),
                    buildProfileCard("assets/images/profile_before_after.png",
                        "Before/After Pictures"),
                    buildProfileCard(
                        "assets/images/profile_lab_results.png", "Lab Results"),
                    buildProfileCard(
                        "assets/images/profile_medicine.png", "My Medicines"),
                    buildProfileCard("assets/images/profile_visit_rating.png",
                        "Visit Rating"),
                    buildProfileCard("assets/images/profile_doctor_rating.png",
                        "Doctor Rating"),
                    buildProfileCard(
                        "assets/images/profile_past_appointments.png",
                        "Past Appointments"),
                    buildProfileCard("assets/images/profile_service_rating.png",
                        "Service Rating"),
                    buildProfileCard("assets/images/profile_req_sick.png",
                        "Request Sick Leave"),
                    buildProfileCard(
                        "assets/images/profile_past_appointments.png",
                        "Upcoming Appointments"),
                    buildProfileCard(
                        "assets/images/profile_balance.png", "My Balance"),
                    buildProfileCard("assets/images/profile_medical_report.png",
                        "Request Medical Report"),
                    buildProfileCard("assets/images/profile_insurance.png",
                        "Insurance Card"),
                    buildProfileCard(
                        "assets/images/profile_req_sick.png", "Sick Leaves"),
                    buildProfileCard(
                        "assets/images/profile_insurance_approvals.png",
                        "Insurance Approvals"),
                    buildProfileCard(
                        "assets/images/profile_insurance_update.png",
                        "Insurance Update"),
                    buildProfileCard("assets/images/profile_procedures.png",
                        "Profile Procedures"),
                    buildProfileCard(
                        "assets/images/profile_allergies.png", "Allergies"),
                    buildProfileCard(
                        "assets/images/dashboard_points.png", "My Points"),
                    buildProfileCard("assets/images/profile_medical_report.png",
                        "Medical Reports"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  paymentContainer(double totalWidth) {
    return Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "You can pay for your account or other accounts",
                style: CustomTextStyle.ButtonTextCyanSmall,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: totalWidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Payment Type",
                      style: CustomTextStyle.ButtonTextCyanSmall,
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: CustomColors.PrimaryColor,
                                      width: 2.0),
                                  borderRadius: BorderRadius.circular(30)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: CustomColors.PrimaryColor,
                                      width: 2.0),
                                  borderRadius: BorderRadius.circular(30)),
                              filled: true,
                              fillColor: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "File Number",
                      style: CustomTextStyle.ButtonTextCyanSmall,
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: CustomColors.PrimaryColor,
                                      width: 2.0),
                                  borderRadius: BorderRadius.circular(30)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: CustomColors.PrimaryColor,
                                      width: 2.0),
                                  borderRadius: BorderRadius.circular(30)),
                              filled: true,
                              fillColor: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Amount",
                      style: CustomTextStyle.ButtonTextCyanSmall,
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: CustomColors.PrimaryColor,
                                      width: 2.0),
                                  borderRadius: BorderRadius.circular(30)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: CustomColors.PrimaryColor,
                                      width: 2.0),
                                  borderRadius: BorderRadius.circular(30)),
                              filled: true,
                              fillColor: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Email",
                      style: CustomTextStyle.ButtonTextCyanSmall,
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: CustomColors.PrimaryColor,
                                      width: 2.0),
                                  borderRadius: BorderRadius.circular(30)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: CustomColors.PrimaryColor,
                                      width: 2.0),
                                  borderRadius: BorderRadius.circular(30)),
                              filled: true,
                              fillColor: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Notes",
                      style: CustomTextStyle.ButtonTextCyanSmall,
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: CustomColors.PrimaryColor,
                                      width: 2.0),
                                  borderRadius: BorderRadius.circular(30)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: CustomColors.PrimaryColor,
                                      width: 2.0),
                                  borderRadius: BorderRadius.circular(30)),
                              filled: true,
                              fillColor: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          "assets/images/visa.png",
                          height: 40,
                          width: 60,
                        ),
                        Image.asset(
                          "assets/images/mastercard.png",
                          height: 40,
                          width: 60,
                        ),
                        Image.asset(
                          "assets/images/mada.png",
                          height: 40,
                          width: 60,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, right: 50),
                      child: Container(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DashboardScreen()));
                          },
                          child: Text(
                            "Register",
                            style: CustomTextStyle.ButtonTextWhiteSmall,
                          ),
                          style: CustomButtonStyle.SocialSizeBtn,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  dashboardCheckInContainer(double totalWidth) {
    return Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Image.asset(
                "assets/images/dashboard_checkin.png",
                height: 80,
                width: 80,
                fit: BoxFit.contain,
              ),
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: Container(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DashboardScreen()));
                    },
                    child: Text(
                      "Check In Now",
                      style: CustomTextStyle.ButtonTextWhiteSmall,
                    ),
                    style: CustomButtonStyle.SocialSizeBtn,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }

  dashboardContactUsContainer(double totalWidth) {
    return Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Image.asset(
                "assets/images/dashboard_contact.png",
                height: 80,
                width: 80,
                fit: BoxFit.contain,
              ),
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: CustomColors.PrimaryColor,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10,0,10,0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/whatsapp.png",height: 30, width: 30,),
                        SizedBox(width: 10,),
                        Text("Direct Chat", style: CustomTextStyle.ButtonTextWhiteSmall,),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: CustomColors.PrimaryColor,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10,0,10,0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.phone,color: CustomColors.White,),
                        SizedBox(width: 10,),
                        Text("Direct Chat", style: CustomTextStyle.ButtonTextWhiteSmall,),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }

  dashboardMyPointsContainer(double totalWidth) {
    return Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Text("150",style: CustomTextStyle.AttentionBigCyan,),
              Text("Points",style: CustomTextStyle.AttentionCyan,),
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: Container(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DashboardScreen()));
                    },
                    child: Text(
                      "Book Now",
                      style: CustomTextStyle.ButtonTextWhiteSmall,
                    ),
                    style: CustomButtonStyle.SocialSizeBtn,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }

  dashboardOurDoctors(double totalWidth){
    return Container(
      child: ListView.builder(
          itemCount: names.length,
          shrinkWrap: true,
          itemBuilder: (BuildContext context,int index) => Container(
            width: totalWidth,
            child: Container(
              width: totalWidth,
              padding: EdgeInsets.only(top: 10,bottom: 10,left: 5,right: 5),
              decoration: BoxDecoration(
                border: Border.all(color: CustomColors.Grey)
              ),
              child: Row(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/dummy_doc.jpg",)),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: totalWidth - 108,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(names[index],style: CustomTextStyle.AttentionCyan,),
                          Text("Aesthetic Professor", style: CustomTextStyle.ButtonTextCyanSmall,),
                          Container(
                            width: totalWidth - 55,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text("(75)", style: CustomTextStyle.ButtonTextCyanSmall,),
                                    SizedBox(width: 5,),
                                    Icon(Icons.star,color: CustomColors.Yellow, size: 14,),
                                    Icon(Icons.star,color: CustomColors.Yellow, size: 14,),
                                    Icon(Icons.star,color: CustomColors.Yellow, size: 14,),
                                    Icon(Icons.star,color: CustomColors.Yellow, size: 14,),
                                    Icon(Icons.star,color: CustomColors.Yellow, size: 14,),
                                  ],
                                ),

                                Container(
                                  height: 25,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: CustomColors.PrimaryColor,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Text("See More",style: CustomTextStyle.ButtonTextWhiteSmall,textAlign: TextAlign.center,),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
      ),
    );
  }
}
