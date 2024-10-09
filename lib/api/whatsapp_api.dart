import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:whatsapp_ui_clone/model/contact_model.dart';

class ApiServices {
  Future<List<ContactModel>?> getItem() async {
    var response = await http
        .get(Uri.parse('https://picsum.photos/v2/list?page=2&limit=230'));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body.toString());
      List<ContactModel> model =
          List<ContactModel>.from(data.map((x) => ContactModel.fromJson(x)));
      return model;
    }
    return null;
  }
}
