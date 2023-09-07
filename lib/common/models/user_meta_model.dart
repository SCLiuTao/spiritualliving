// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserMetaMedel {
  Userdata? userdata;

  UserMetaMedel({userdata});

  UserMetaMedel.fromJson(Map<String, dynamic> json) {
    userdata =
        json['userdata'] != null ? Userdata.fromJson(json['userdata']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (userdata != null) {
      data['userdata'] = userdata!.toJson();
    }
    return data;
  }

  @override
  String toString() => 'UserMeta(userdata: $userdata)';
}

class Userdata {
  String? userID;
  String? type;
  String? displayName;
  String? firstName;
  String? lastName;
  String? userEmail;

  Userdata({userID, type, displayName, firstName, lastName, userEmail});

  Userdata.fromJson(Map<String, dynamic> json) {
    userID = json['userID'];
    type = json['type'];
    displayName = json['display_name'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    userEmail = json['user_email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userID'] = userID;
    data['type'] = type;
    data['display_name'] = displayName;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['user_email'] = userEmail;
    return data;
  }

  @override
  String toString() {
    return 'Userdata(userID: $userID, type: $type, displayName: $displayName, firstName: $firstName, lastName: $lastName, userEmail: $userEmail)';
  }
}
