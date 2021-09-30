import 'package:flutter/material.dart';
import 'package:willir/Utils/CustomColors.dart';
import 'package:willir/Utils/CustomTextStyle.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    var totalWidth = MediaQuery.of(context).size.width;

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
                      });
                    },
                  ),
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
                            Image.asset("assets/images/dashboard_friends.png",
                              height: 40,
                              width: 40,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Friends Offer",
                              style: CustomTextStyle.ButtonTextCyanSmall,
                              textAlign: TextAlign.center,
                            )
                          ],
                        )),
                    onTap: () {
                      setState(() {
                      });
                    },
                  ),
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
                            Image.asset("assets/images/dashboard_pharmacy.png",
                              height: 40,
                              width: 40,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Pharmacy",
                              style: CustomTextStyle.ButtonTextCyanSmall,
                              textAlign: TextAlign.center,
                            )
                          ],
                        )),
                    onTap: () {
                      setState(() {
                      });
                    },
                  ),
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
                            Image.asset("assets/images/dashboard_service.png",
                              height: 40,
                              width: 40,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Our Service",
                              style: CustomTextStyle.ButtonTextCyanSmall,
                              textAlign: TextAlign.center,
                            )
                          ],
                        )),
                    onTap: () {
                      setState(() {
                      });
                    },
                  ),
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
                      });
                    },
                  ),
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
                            Image.asset("assets/images/dashboard_video.png",
                              height: 40,
                              width: 40,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Live Video Consult",
                              style: CustomTextStyle.ButtonTextCyanSmall,
                              textAlign: TextAlign.center,
                            )
                          ],
                        )),
                    onTap: () {
                      setState(() {
                      });
                    },
                  ),
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

                      });
                    },
                  ),
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
                            Image.asset("assets/images/dashboard_directions.png",
                              height: 40,
                              width: 40,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Directions",
                              style: CustomTextStyle.ButtonTextCyanSmall,
                              textAlign: TextAlign.center,
                            )
                          ],
                        )),
                    onTap: () {
                      setState(() {

                      });
                    },
                  ),
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
}
