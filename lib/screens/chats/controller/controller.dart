import 'package:reactiv/reactiv.dart';
import 'package:whatsapp_ui_clone/api/whatsapp_api.dart';
import 'package:whatsapp_ui_clone/model/contact_model.dart';

class ChatController extends ReactiveController {
  ReactiveBool isFetchComplete = ReactiveBool(false);
  ReactiveList<ContactModel> contactList = ReactiveList([]);
  ReactiveString messageType = ReactiveString('');
  ReactiveBool isChatLock = ReactiveBool(false);

  void getUserData() {
    ApiServices().getItem().then((onValue) {
      return contactList.value = onValue!;
    });
    isFetchComplete.value = true;
  }

  @override
  void onInit() {
    getUserData();
    super.onInit();
  }
}
