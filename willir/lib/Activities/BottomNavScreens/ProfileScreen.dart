import 'package:flutter/material.dart';
import 'package:willir/Utils/CustomColors.dart';
import 'package:willir/Utils/CustomTextStyle.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
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
