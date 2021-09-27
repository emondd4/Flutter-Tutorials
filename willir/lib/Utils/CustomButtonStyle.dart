import 'package:flutter/material.dart';

import 'CustomColors.dart';

class CustomButtonStyle{

  static ButtonStyle LoginBtn = ElevatedButton.styleFrom(
      shape: StadiumBorder(),
      primary: Colors.white,
      onPrimary: CustomColors.PrimaryColor,
      minimumSize: Size(180.0, 40.0)
  );

  static ButtonStyle LoginBtnCyan = ElevatedButton.styleFrom(
      shape: StadiumBorder(),
      primary: CustomColors.PrimaryColor,
      onPrimary: CustomColors.White,
      minimumSize: Size(180.0, 40.0)
  );

  static ButtonStyle SocialSizeBtn = ElevatedButton.styleFrom(
      shape: StadiumBorder(),
      primary: CustomColors.PrimaryColor,
      onPrimary: CustomColors.White,
      minimumSize: Size(300, 40)
  );

  static ButtonStyle SocialFaceBookBtn = TextButton.styleFrom(
      backgroundColor: CustomColors.FacebookBlue,
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24.0),
      ),
      minimumSize: Size(300, 40)
  );

  static ButtonStyle SocialGoogleBtn = TextButton.styleFrom(
      backgroundColor: CustomColors.Red,
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24.0),
      ),
      minimumSize: Size(300, 40)
  );

  static ButtonStyle SocialTwitterBtn = TextButton.styleFrom(
      backgroundColor: CustomColors.TwitterBlue,
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24.0),
      ),
      minimumSize: Size(300, 40)
  );
}
