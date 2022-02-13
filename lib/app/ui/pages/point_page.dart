import 'package:airsignal_flutter/app/ui/widgets/point_page/history_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../controllers/node_controller.dart';
import '../layout/main_layout.dart';

class PointPage extends GetView<NodeController> {
  const PointPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var nodeId = Get.parameters['node_id'];
    controller.getNodeById(nodeId);
    controller.getHistoryById(nodeId);

    return Scaffold(body: Obx(() {
      var val = 0.0;
      if (!controller.loading && controller.node?.pm25 != null) {
        val = controller.node!.pm25!;
        if (val > 80) {
          val = 0;
        } else {
          val = 80 - val;
        }
      }
      var color1 = HSLColor.fromAHSL(1, val, 1, 0.7).toColor();
      var color2 = HSLColor.fromAHSL(1, val + 20, 1, 0.7).toColor();

      return controller.loading
          ? const Center(child: Text('Loading...'))
          : Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [color1, color2],
                      )),
                  child: Container(
                    margin:
                        const EdgeInsets.only(top: 60, left: 20, bottom: 30),
                    child: IntrinsicHeight(
                      child: Row(
                        children: [
                          Flexible(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      controller.node?.pm25
                                              ?.toInt()
                                              .toString() ??
                                          "~",
                                      style: const TextStyle(
                                          height: 1,
                                          fontSize: 90,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          bottom: 13, left: 10),
                                      child: const Text(
                                        'PM2.5',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0x66000000)),
                                      ),
                                    ),
                                  ],
                                ),
                                const Text(
                                  'Воздух плохой, ожидаются улучшения в ближайшие 8 часов',
                                  style: TextStyle(fontSize: 16),
                                )
                              ],
                            ),
                          ),
                          const VerticalDivider(
                            width: 20,
                            thickness: 1,
                            indent: 10,
                            endIndent: 10,
                            color: Color(0x55000000),
                          ),
                          Flexible(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                  'Температура: ${controller.node?.temperature ?? "~"}°',
                                  style: const TextStyle(
                                      color: Color(0x66000000))),
                              Text(
                                  'Ветер: ${controller.node?.wind.speed ?? "~"} м/с',
                                  style: const TextStyle(
                                      color: Color(0x66000000))),
                              Text(
                                  'Влажность: ${controller.node?.humidity ?? "~"}%',
                                  style: const TextStyle(
                                      color: Color(0x66000000))),
                              Text(
                                  'Давление: ${controller.node?.pressure ?? "~"} hPa',
                                  style: const TextStyle(
                                      color: Color(0x66000000))),
                            ],
                          )),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 260,
                  padding: const EdgeInsets.all(10),
                  child: Obx(() => controller.loadingHistory
                      ? const Center(
                          child: Text('Loading...'),
                        )
                      : HistoryChart(controller.histories, animate: true)),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Flexible(
                          child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            child: const Text(
                              'Здесь куча текста, бла бла бла бла. Рустам сказал напишет тут рекомендации',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            child: const Text(
                              'Здесь куча текста, бла бла бла бла. Рустам сказал напишет тут рекомендации',
                              style: TextStyle(fontSize: 16),
                            ),
                          )
                        ],
                      ))
                    ],
                  ),
                ),
                Expanded(
                    child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    margin: const EdgeInsets.only(bottom: 30),
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        launch("https://bashair.ru");
                      },
                      child: const Text('Жалоба'),
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xFFFF9356),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                ))
              ],
            );
    }));
  }
}
