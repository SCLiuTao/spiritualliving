// ignore_for_file: public_member_api_docs, sort_constructors_first
class OrdersModel {
  String? orderNumber;
  String? orderDate;
  String? orderStatus;
  int? orderSubtotalAmount;
  String? orderTotalAmount;
  String? orderShippingMethod;
  String? orderPaymentMethod;
  int? orderQty;
  OrderBillingAddress? orderBillingAddress;
  OrderShippingAddress? orderShippingAddress;
  List<OrderItem>? orderItem;

  OrdersModel(
      {orderNumber,
      orderDate,
      orderStatus,
      orderSubtotalAmount,
      orderTotalAmount,
      orderShippingMethod,
      orderPaymentMethod,
      orderQty,
      orderBillingAddress,
      orderShippingAddress,
      orderItem});

  OrdersModel.fromJson(Map<String, dynamic> json) {
    orderNumber = json['order_number'];
    orderDate = json['order_date'];
    orderStatus = json['order_status'];
    orderSubtotalAmount = json['order_subtotal_amount'];
    orderTotalAmount = json['order_total_amount'];
    orderShippingMethod = json['order_shipping_method'];
    orderPaymentMethod = json['order_payment_method'];
    orderQty = json['order_qty'];
    orderBillingAddress = json['order_billing_address'] != null
        ? OrderBillingAddress.fromJson(json['order_billing_address'])
        : null;
    orderShippingAddress = json['order_shipping_address'] != null
        ? OrderShippingAddress.fromJson(json['order_shipping_address'])
        : null;
    if (json['order_item'] != null) {
      orderItem = <OrderItem>[];
      json['order_item'].forEach((v) {
        orderItem!.add(OrderItem.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['order_number'] = orderNumber;
    data['order_date'] = orderDate;
    data['order_status'] = orderStatus;
    data['order_subtotal_amount'] = orderSubtotalAmount;
    data['order_total_amount'] = orderTotalAmount;
    data['order_shipping_method'] = orderShippingMethod;
    data['order_payment_method'] = orderPaymentMethod;
    data['order_qty'] = orderQty;
    if (orderBillingAddress != null) {
      data['order_billing_address'] = orderBillingAddress!.toJson();
    }
    if (orderShippingAddress != null) {
      data['order_shipping_address'] = orderShippingAddress!.toJson();
    }
    if (orderItem != null) {
      data['order_item'] = orderItem!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class OrderBillingAddress {
  String? firstName;
  String? lastName;
  String? company;
  String? address1;
  String? address2;
  String? city;
  String? state;
  String? postcode;
  String? country;
  String? email;
  String? phone;

  OrderBillingAddress(
      {firstName,
      lastName,
      company,
      address1,
      address2,
      city,
      state,
      postcode,
      country,
      email,
      phone});

  OrderBillingAddress.fromJson(Map<String, dynamic> json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
    company = json['company'];
    address1 = json['address_1'];
    address2 = json['address_2'];
    city = json['city'];
    state = json['state'];
    postcode = json['postcode'];
    country = json['country'];
    email = json['email'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['company'] = company;
    data['address_1'] = address1;
    data['address_2'] = address2;
    data['city'] = city;
    data['state'] = state;
    data['postcode'] = postcode;
    data['country'] = country;
    data['email'] = email;
    data['phone'] = phone;
    return data;
  }

  @override
  String toString() {
    return 'OrderBillingAddress(firstName: $firstName, lastName: $lastName, company: $company, address1: $address1, address2: $address2, city: $city, state: $state, postcode: $postcode, country: $country, email: $email, phone: $phone)';
  }
}

class OrderShippingAddress {
  String? firstName;
  String? lastName;
  String? company;
  String? address1;
  String? address2;
  String? city;
  String? state;
  String? postcode;
  String? country;
  String? phone;

  OrderShippingAddress(
      {firstName,
      lastName,
      company,
      address1,
      address2,
      city,
      state,
      postcode,
      country,
      phone});

  OrderShippingAddress.fromJson(Map<String, dynamic> json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
    company = json['company'];
    address1 = json['address_1'];
    address2 = json['address_2'];
    city = json['city'];
    state = json['state'];
    postcode = json['postcode'];
    country = json['country'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['company'] = company;
    data['address_1'] = address1;
    data['address_2'] = address2;
    data['city'] = city;
    data['state'] = state;
    data['postcode'] = postcode;
    data['country'] = country;
    data['phone'] = phone;
    return data;
  }

  @override
  String toString() {
    return 'OrderShippingAddress(firstName: $firstName, lastName: $lastName, company: $company, address1: $address1, address2: $address2, city: $city, state: $state, postcode: $postcode, country: $country, phone: $phone)';
  }
}

class OrderItem {
  int? qty;
  String? name;
  String? amount;

  OrderItem({qty, name, amount});

  OrderItem.fromJson(Map<String, dynamic> json) {
    qty = json['qty'];
    name = json['name'];
    amount = json['amount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['qty'] = qty;
    data['name'] = name;
    data['amount'] = amount;
    return data;
  }
}
