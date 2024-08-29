import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_with_getx/controller/home_controller.dart';
import 'package:project_with_getx/view/screen_1_view/screen_1_view.dart';
import 'package:project_with_getx/view/screen_2_view/screen_2_view.dart';
import 'package:project_with_getx/view/screen_3_view/screen_3_view.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Home"),
        ),
        body: GetBuilder<HomeController>(
          init: HomeController(),
          builder: (controller) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'GetBuilder ',
                  style: TextStyle(fontSize: 30),
                ),
                const SizedBox(
                  height: 25,
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
                      controller.counter.toString(),
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
                const SizedBox(
                  height: 25,
                ),
                const NavigationsButtons(),
              ],
            ),
          ),
        ),
        floatingActionButton: GetBuilder<HomeController>(
          init: HomeController(),
          builder: (controller) => FloatingActionButton(
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

class NavigationsButtons extends StatelessWidget {
  const NavigationsButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const SizedBox(
          height: 40,
        ),
        MaterialButton(
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: () {
            Get.to(() => Screen1View());
          },
          child: const Text(
            "Screen 1",
            style: TextStyle(fontSize: 16),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        MaterialButton(
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: () {
            Get.off(() => Screen2View());
          },
          child: const Text(
            "Screen 2",
            style: TextStyle(fontSize: 16),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        MaterialButton(
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: () {
            Get.offAll(() => const Screen3View());
          },
          child: const Text(
            "Screen 3",
            style: TextStyle(fontSize: 16),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
      ],
    );
  }
}
