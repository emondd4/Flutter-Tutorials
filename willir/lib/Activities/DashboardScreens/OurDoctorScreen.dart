import 'package:flutter/material.dart';
import 'package:willir/Utils/CustomColors.dart';
import 'package:willir/Utils/CustomTextStyle.dart';

class OurDoctorScreen extends StatefulWidget {
  const OurDoctorScreen({Key? key}) : super(key: key);

  @override
  _OurDoctorScreenState createState() => _OurDoctorScreenState();
}

class _OurDoctorScreenState extends State<OurDoctorScreen> {

  List names = ["Emon Hossain","Akteruzzaman", "Mehedi Hasan Rashed","Cse Sajib Saha","Prinon Bhowmik","Shihasish Paul Pappu","Abul Kalam Azad"];

  @override
  Widget build(BuildContext context) {

    var totalWidth = MediaQuery.of(context).size.width;

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
