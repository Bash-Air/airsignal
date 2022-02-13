import 'package:airsignal_flutter/app/ui/widgets/point_page/history_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../controllers/node_controller.dart';

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

      var placeName = '';
      if (!controller.loading) {
        placeName = controller.node!.city;
        if (controller.node?.name != '') {
          placeName = (placeName + ', ${controller.node!.name}');
        }
      }

      return controller.loading
          ? const Center(child: Text('Loading...'))
          : Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15)),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [color1, color2],
                      )),
                  child: Container(
                    margin:
                        const EdgeInsets.only(top: 60, left: 20, bottom: 30),
                    child: SizedBox(
                      height: 140,
                      child: Row(
                        children: [
                          Flexible(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        controller.node?.pm25
                                                ?.toInt()
                                                .toString() ??
                                            "~",
                                        style: const TextStyle(
                                            height: 1,
                                            fontSize: 80,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            bottom: 13, left: 5),
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
                                ),
                                Container(
                                  margin: const EdgeInsets.only(bottom: 9),
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    '$placeName',
                                    style: const TextStyle(fontSize: 14),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const VerticalDivider(
                            width: 50,
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
                            margin: const EdgeInsets.symmetric(vertical: 15),
                            child: const Text(
                              'Здесь куча текста, бла бла бла бла. Рустам сказал напишет тут рекомендации',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 15),
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
                      child: const Text('Отправить жалобу',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xFFFF9356),
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
