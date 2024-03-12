import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ssl_commerce_flutter_web/model.dart';
import 'package:ssl_commerce_flutter_web/secret.dart';

class SSLPayment {
  Future<void> createPayent(Mode mode) async {
    String baseUrl =
        mode == Mode.sandbox ? SSLConst.baseUrlSandBox : SSLConst.baseUrlLive;
    String createUrl = SSLConst.createSessionUrl;
    http.Response res = await http.post(
      Uri.parse("https://sandbox.sslcommerz.com/gwprocess/v4/api.php"),
      // Uri.parse("$baseUrl/$createUrl"),
      headers: {
        'Content-Type': 'application/json',
        'mode': 'no-cors',
      },

      body: json.encode({
        'store_id': SSLSecret.storeIdSandBox,
        'store_passwd': SSLSecret.storePassSandBox,
        'total_amount': '100',
        'currency': 'EUR',
        'tran_id': 'REF123',
        'success_url': 'http://yoursite.com/success.php',
        'fail_url': 'http://yoursite.com/fail.php',
        'cancel_url': 'http://yoursite.com/cancel.php',
        'cus_name': 'Customer Name',
        'cus_email': 'cust@yahoo.com',
        'cus_add1': 'Dhaka',
        'cus_add2': 'Dhaka',
        'cus_city': 'Dhaka',
        'cus_state': 'Dhaka',
        'cus_postcode': '1000',
        'cus_country': 'Bangladesh',
        'cus_phone': '01711111111',
        'cus_fax': '01711111111',
        'ship_name': 'Customer Name',
        'ship_add1': 'Dhaka',
        'ship_add2': 'Dhaka',
        'ship_city': 'Dhaka',
        'ship_state': 'Dhaka',
        'ship_postcode': '1000',
        'ship_country': 'Bangladesh',
        'multi_card_name': 'mastercard,visacard,amexcard',
        'value_a': 'ref001_A',
        'value_b': 'ref002_B',
        'value_c': 'ref003_C',
        'value_d': 'ref004_D',
      }),
    );
    print(res.body);
  }
}
