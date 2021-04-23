import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  final String auth_token = "auth_token";
  final String login_token = "login_token";
  final String is_login = "is_login";
  final String is_admin = "is_admin";
  final String name = "name";
  final String incidentId = "incidentId";
  final String firetoken = "firetoken";
  final String userid = "userid";

  Future<void> setUserId(String userid) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(this.userid, userid);
  }

//get value from shared preferences
  Future<String> getUserId() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    String userid;
    userid = pref.getString(this.userid) ?? null;
    return userid;
  }

  Future<void> setFireToken(String firetoken) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(this.firetoken, firetoken);
  }

//get value from shared preferences
  Future<String> getFireToken() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    String firetoken;
    firetoken = pref.getString(this.firetoken) ?? null;
    return firetoken;
  }

  Future<void> setIncidentId(int incidentId) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt(this.incidentId, incidentId);
  }

//get value from shared preferences
  Future<int> getIncidentId() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    int incidentId;
    incidentId = pref.getInt(this.incidentId) ?? null;
    return incidentId;
  }

  Future<void> setName(String name) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(this.name, name);
  }

//get value from shared preferences
  Future<String> getName() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    String name;
    name = pref.getString(this.name) ?? null;
    return name;
  }

  Future<void> setIsAdmin(String is_admin) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(this.is_admin, is_admin);
  }

//get value from shared preferences
  Future<String> getIsadmin() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    String is_admin;
    is_admin = pref.getString(this.is_admin) ?? null;
    return is_admin;
  }

//set data into shared preferences like this
  Future<void> setAuthToken(String auth_token) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(this.auth_token, auth_token);
  }

//get value from shared preferences
  Future<String> getAuthToken() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    String auth_token;
    auth_token = pref.getString(this.auth_token) ?? null;
    return auth_token;
  }

  Future<void> setLoginToken(String login_token) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(this.login_token, login_token);
  }

//get value from shared preferences
  Future<String> getLoginToken() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    String login_token;
    login_token = pref.getString(this.login_token) ?? null;
    return login_token;
  }

  Future<void> setIsLogin(String is_login) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(this.is_login, is_login);
  }

//get value from shared preferences
  Future<String> getIsLogin() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    String is_login;
    is_login = pref.getString(this.is_login) ?? null;
    return is_login;
  }

  clearShared1() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    // preferences.clear();
    preferences.getKeys();
    preferences.remove("incidentId");
  }

  clearShared() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    // preferences.clear();
    preferences.getKeys();
    preferences.remove("auth_token");
    preferences.remove("login_token");
    preferences.remove("is_login");
    preferences.remove("is_admin");
    preferences.remove("userid");
  }
}
