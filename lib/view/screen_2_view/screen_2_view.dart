import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_with_getx/controller/screen_2_controller.dart';
import 'package:project_with_getx/view/home_view/home_view.dart';

class Screen2View extends StatelessWidget {
  Screen2View({super.key});

  final Screen2Controller controller = Get.put(Screen2Controller());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.offAll(() => const MyHomePage());
              },
              icon: const Icon(Icons.arrow_back)),
        ),
        body: Obx(
          () => Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    ' Replace Route the intial route now is screen 2',
                    style: TextStyle(fontSize: 30),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    'Obx Widget for controller builder',
                    style: TextStyle(fontSize: 30),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton.icon(
                          onPressed: () {
                            controller.increment();
                          },
                          label: const Icon(Icons.add)),
                      const SizedBox(
                        width: 25,
                      ),
                      Text(
                        controller.counter.value.toString(),
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      ElevatedButton.icon(
                          onPressed: () {
                            controller.decrement();
                          },
                          label: const Padding(
                              padding: EdgeInsets.only(bottom: 8),
                              child: Icon(Icons.minimize))),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
