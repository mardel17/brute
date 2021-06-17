import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

const String BASE_URL = "https://faithspace.app/api/";
// const String BASE_URL = "http://10.10.11.114:8000/api/";
const String FACEBOOK_URL =
    "https://graph.facebook.com/v2.12/me?fields=name,first_name,last_name,email&access_token=";

const String FACEBOOK_APP_ID = '438107843944753';

const String TERM_URL = "https://faithspace.app/terms";
const String POLICY_URL = "https://faithspace.app/policy";

class KEY {
  static const String SAVED_USER = "faith_saved_user";
  static const String SAVED_VERSE = "faith_saved_verse";
}

class API {
  static const String RESULT = "result";
  static const String DATA = "data";
  static const String MESSAGE = "message";

  static const String USER_LOGIN = "user_login";
  static const String RESET_PASSWORD = "reset_password";
  static const String USER_SIGNUP = "user_signup";
  static const String UPDATE_PROFILE = "update_profile";

  static const String FACEBOOK_LOGIN = "facebook_login";
  static const String GOOGLE_LOGIN = "google_login";
  static const String APPLE_LOGIN = "apple_login";

  static const String INVITE_FRIEND = "invite_friend";
  static const String INVITE_PRAY = "invite_pray";
  static const String ADD_PRAY = "add_pray";
  static const String FOLLOW_PRAY = "follow_pray";
  static const String GET_PRAY = "get_pray";
  static const String GET_INVITE = "get_invite";

  static const String GET_MEDITATE = "get_meditate";
  static const String GET_BACKGROUND = "get_background";
  static const String SEND_NOTIFICATION = "send_notification";

  static const String ADD_FAVORITE_VERSE = "add_favorite_verse";
  static const String DELETE_FAVORITE_VERSE = "delete_favorite_verse";
  static const String GET_FAVORITE_VERSE = "get_favorite_verse";

  static const String MAKE_PAYMENT = "make_payment";
  static const String GET_ONE_INVITE = "get_one_invite";
  static const String UPDATE_INVITE = "update_invite";
}

class ROUTE {
  static const String WELCOME = "/";
  static const String LOGIN = "/login";
  static const String SIGNUP = "/signup";

  static const String HOME = "/home";
  static const String SETTING = "/setting";

  // static const String LOYALTY = "/rreligion";
  // static const String QUOTE = "/rlanguage";
  // static const String HOROSCOPE = "/rtranslation";
  // static const String TOKEN = "/rpriority";
  // static const String NEWS = "/rtry";
  // static const String SHOP = "/main";

  static const String HOROSCOPE_DETAIL = "/horoscope_detail";

  static const String CHAPTER = "/chapter";
  static const String NEW_PRAYER = "/new_prayer";
  static const String PRAY_INVITE = "/pray_invite";

  static const String MEDITATE = "/meditate";
}

class COLOR {
  static const Color GREEN = Color(0xff59D6B8);
  static const Color TEXT_BACK = Color(0xffF2F3F7);
  static const Color TEXT_HINT = Color(0xffA1A4B2);
  static const Color TEXT_YELLOW = Color(0xffF2E3B5);
  static const Color TEXT_DARK = Color(0xff3F414E);
  static const Color RED = Color(0xffFA6E5A);
  static const Color PURPLE = Color(0xff8E97FD);
  static const Color GRAY = Color(0xffA0A3B1);
  static const Color AZURE = Color(0xff3CB9E5);
  static const Color YELLOW = Color(0xffF5C371);
  static const Color RED_DARK = Color(0xffC54554);
  static const Color PURPLE_LIGHT = Color(0xff8DA5EA);
  static const Color BLUE = Color(0xff1877F2);
  static const Color TEXT_GOOGLE = Color(0xff3F414E);
  static const Color BORDER_GOOGLE = Color(0xffEBEAEC);
  static const Color ORANGE = Color(0xffFFC657);
}

bool isValidEmail(String email) {
  bool emailValid = RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);

  return emailValid;
}

bool isNumeric(String s) {
  if (s == null) {
    return false;
  }
  return double.tryParse(s) != null;
}

showAlertDialog(BuildContext context, String title, String description) {
  // set up the button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(title),
    content: Text(description),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showToast(String message) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    backgroundColor: Colors.white,
    textColor: Colors.black,
    fontSize: 16,
  );
}
