import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_with_getx/controller/screen_1_controller.dart';

class Screen1View extends StatelessWidget {
  Screen1View({super.key});
// the only use of it if you want to access some method inside the controller iut of the GetX Builder scope
  final Screen1Controller controller = Get.put(
    Screen1Controller(),
    permanent: true, // to save the local data
  );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      body: GetX<Screen1Controller>(
        init: Screen1Controller(),
        builder: (controller) => Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'GetX Widget for controller builder',
                  style: TextStyle(fontSize: 26),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    ) // This trailing comma makes auto-formatting nicer for build methods.

        );
  }
}
