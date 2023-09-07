// ignore_for_file: public_member_api_docs, sort_constructors_first
class CustomerAddressModel {
  int? code;
  UserMetaData? userMetaData;

  CustomerAddressModel({code, data});

  CustomerAddressModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    userMetaData = json['userMetaData'] != null
        ? UserMetaData.fromJson(json['userMetaData'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userMetaData'] = code;
    if (userMetaData != null) {
      data['userMetaData'] = userMetaData!.toJson();
    }
    return data;
  }

  @override
  String toString() =>
      'CustomerAddressModel(code: $code, userMetaData: $userMetaData)';
}

class UserMetaData {
  String? billingFirstName;
  String? billingLastName;
  String? billingCountry;
  String? billingState;
  String? billingCity;
  String? billingAddress1;
  String? billingAddress2;
  String? billingPostcode;
  String? billingPhone;
  String? billingEmail;
  String? shippingFirstName;
  String? shippingLastName;
  String? shippingCountry;
  String? shippingState;
  String? shippingCity;
  String? shippingAddress1;
  String? shippingAddress2;
  String? shippingPostcode;
  String? shippingPhone;
  String? shippingEmail;

  UserMetaData(
      {billingFirstName,
      billingLastName,
      billingCountry,
      billingState,
      billingCity,
      billingAddress1,
      billingAddress2,
      billingPostcode,
      billingPhone,
      billingEmail,
      shippingFirstName,
      shippingLastName,
      shippingCountry,
      shippingState,
      shippingCity,
      shippingAddress1,
      shippingAddress2,
      shippingPostcode,
      shippingPhone,
      shippingEmail});

  UserMetaData.fromJson(Map<String, dynamic> json) {
    billingFirstName = json['billing_first_name'];
    billingLastName = json['billing_last_name'];
    billingCountry = json['billing_country'];
    billingState = json['billing_state'];
    billingCity = json['billing_city'];
    billingAddress1 = json['billing_address_1'];
    billingAddress2 = json['billing_address_2'];
    billingPostcode = json['billing_postcode'];
    billingPhone = json['billing_phone'];
    billingEmail = json['billing_email'];
    shippingFirstName = json['shipping_first_name'];
    shippingLastName = json['shipping_last_name'];
    shippingCountry = json['shipping_country'];
    shippingState = json['shipping_state'];
    shippingCity = json['shipping_city'];
    shippingAddress1 = json['shipping_address_1'];
    shippingAddress2 = json['shipping_address_2'];
    shippingPostcode = json['shipping_postcode'];
    shippingPhone = json['shipping_phone'];
    shippingEmail = json['shipping_email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['billing_first_name'] = billingFirstName;
    data['billing_last_name'] = billingLastName;
    data['billing_country'] = billingCountry;
    data['billing_state'] = billingState;
    data['billing_city'] = billingCity;
    data['billing_address_1'] = billingAddress1;
    data['billing_address_2'] = billingAddress2;
    data['billing_postcode'] = billingPostcode;
    data['billing_phone'] = billingPhone;
    data['billing_email'] = billingEmail;
    data['shipping_first_name'] = shippingFirstName;
    data['shipping_last_name'] = shippingLastName;
    data['shipping_country'] = shippingCountry;
    data['shipping_state'] = shippingState;
    data['shipping_city'] = shippingCity;
    data['shipping_address_1'] = shippingAddress1;
    data['shipping_address_2'] = shippingAddress2;
    data['shipping_postcode'] = shippingPostcode;
    data['shipping_phone'] = shippingPhone;
    data['shipping_email'] = shippingEmail;
    return data;
  }

  @override
  String toString() {
    return 'UserMetaData(billingFirstName: $billingFirstName, billingLastName: $billingLastName, billingCountry: $billingCountry, billingState: $billingState, billingCity: $billingCity, billingAddress1: $billingAddress1, billingAddress2: $billingAddress2, billingPostcode: $billingPostcode, billingPhone: $billingPhone, billingEmail: $billingEmail, shippingFirstName: $shippingFirstName, shippingLastName: $shippingLastName, shippingCountry: $shippingCountry, shippingState: $shippingState, shippingCity: $shippingCity, shippingAddress1: $shippingAddress1, shippingAddress2: $shippingAddress2, shippingPostcode: $shippingPostcode, shippingPhone: $shippingPhone, shippingEmail: $shippingEmail)';
  }
}
