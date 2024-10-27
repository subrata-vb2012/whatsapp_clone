import 'package:flutter/material.dart';
import 'package:reactiv/reactiv.dart';
import 'package:whatsapp_ui_clone/screens/chats/controller/controller.dart';
import '../../../utils/color.dart';

class TypeTextfields extends ReactiveStateWidget<ChatController> {
  @override
  BindController<ChatController>? bindController() {
    // TODO: implement bindController
    return BindController(controller: () => ChatController());
  }

  const TypeTextfields({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            cursorColor: Colors.green,
            onChanged: (value) {
              controller.messageType.value = value;
            },
            onTapOutside: (v) {
              FocusScope.of(context).unfocus();
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none),
              filled: true,
              fillColor: AppColorConst.fillColor,
              prefixIcon: const Icon(Icons.mood),
              hintText: 'Message',
              suffixIcon: const Icon(Icons.attach_file),
            ),
          ),
        ),
        const SizedBox(width: 5),
        CircleAvatar(
          backgroundColor: Colors.green,
          radius: 25,
          child: Center(
            child: Observer(
                listenable: controller.messageType,
                listener: (messageType) {
                  return Icon(
                    controller.messageType.value.isEmpty
                        ? Icons.mic
                        : Icons.send_rounded,
                    size: 25,
                    color: Colors.black,
                  );
                }),
          ),
        )
      ],
    );
  }
}
