import 'package:flutter/material.dart';
import 'package:reactiv/reactiv.dart';
import 'package:whatsapp_ui_clone/screens/updates/controller.dart';
import 'package:whatsapp_ui_clone/utils/color.dart';
import 'package:whatsapp_ui_clone/widgets/app_text_field.dart';

class ShowStatusScreen extends ReactiveStateWidget<UpdateScreenController> {
  const ShowStatusScreen({super.key, required this.image, required this.name});

  @override
  BindController<UpdateScreenController>? bindController() {
    // TODO: implement bindController
    return BindController(controller: () => UpdateScreenController());
  }

  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          toolbarHeight: 100,
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(bottom: 35.0),
            child: Observer(
                listenable: controller.sliderValue,
                listener: (sliderValue) {
                  return Slider(
                    value: controller.sliderValue.value,
                    onChanged: (value) {
                      controller.sliderValue.value = value;
                    },
                    min: 0,
                    max: controller.statusList.length.toDouble() - 1,
                    divisions: controller.statusList.length,
                    activeColor: Colors.white,
                  );
                }),
          ),
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            child: CircleAvatar(
              radius: 24,
              backgroundImage: NetworkImage(image),
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: Theme.of(context).textTheme.titleLarge),
              Text('Yesterday, 7:01 AM',
                  style: Theme.of(context).textTheme.bodyMedium),
            ],
          ),
          actions: [
            PopupMenuButton(
                itemBuilder: (ctx) => [
                      const PopupMenuItem(child: Text('Mute')),
                      const PopupMenuItem(child: Text('Message')),
                      const PopupMenuItem(child: Text('Voice call')),
                      const PopupMenuItem(child: Text('Video call')),
                      const PopupMenuItem(child: Text('View contact')),
                      const PopupMenuItem(child: Text('Report')),
                    ]),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Observer(
                listenable: controller.sliderValue,
                listener: (sliderValue) {
                  return GestureDetector(
                    onTap: () {
                      controller.sliderChange();
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 70),
                      height: MediaQuery.of(context).size.height - 350,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(controller.statusList[
                                  controller.sliderValue.value.toInt()]),
                              fit: BoxFit.cover)),
                    ),
                  );
                }),
            const Row(
              children: [
                Expanded(
                  child: AppTextField(
                    hintText: 'Reply',
                    filledColor: Colors.white10,
                  ),
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  backgroundColor: AppColorConst.fillColor,
                  radius: 25,
                  child: Icon(Icons.favorite_border),
                )
              ],
            ),
          ],
        ));
  }
}
